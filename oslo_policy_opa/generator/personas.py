# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

"""Per-service persona definitions for rego test generation.

Personas define realistic credential and target shapes for each
user archetype (system admin, project member, cross-domain attacker, etc.).
They are loaded from YAML files and used by the test generator to produce
rich positive and denial tests.
"""

import copy
import logging
import pathlib
import re
import typing

import yaml

from oslo_serialization import jsonutils

from oslo_policy_opa.generator import common


LOG = logging.getLogger(__name__)


_target_resources: dict = {}


def load_personas(
    service: str, persona_dir: typing.Optional[str] = None
) -> dict:
    """Load persona definitions for a service.

    Looks for {persona_dir}/{service}.yaml. Returns empty dict
    if no file found (falls back to legacy test generation).
    Also loads target_resources for enriched target shapes.
    """
    global _target_resources
    if not persona_dir:
        return {}
    path = pathlib.Path(persona_dir) / f"{service}.yaml"
    if not path.exists():
        LOG.info("No persona file for %s at %s", service, path)
        return {}
    with open(path) as f:
        data = yaml.safe_load(f)
    personas = data.get("personas", {})
    _target_resources = data.get("target_resources", {})
    LOG.info(
        "Loaded %d personas for %s (%d positive, %d denial, %d target resources)",
        len(personas),
        service,
        len(get_positive_personas(personas)),
        len(get_denial_personas(personas)),
        len(_target_resources),
    )
    return personas


def _get_enriched_fields(rule_name: str) -> dict:
    """Get additional target fields for a policy based on its name.

    Matches the rule name against target_resources patterns to determine
    what enriched fields _enrich_target() would add in production.
    """
    result = {}
    for resource_type, config in _target_resources.items():
        patterns = config.get("patterns", [])
        for pattern in patterns:
            if pattern in rule_name:
                result.update(config.get("fields", {}))
                break
    return result


def get_positive_personas(personas: dict) -> dict:
    """Return personas that should pass policy checks."""
    return {k: v for k, v in personas.items() if not v.get("deny")}


def get_denial_personas(personas: dict) -> dict:
    """Return personas that should be denied by policy checks."""
    return {k: v for k, v in personas.items() if v.get("deny")}


def _is_placeholder(val, placeholders):
    """Check if a value (or nested dict) contains only placeholder values."""
    if isinstance(val, str):
        return val in placeholders
    if isinstance(val, dict):
        return all(_is_placeholder(v, placeholders) for v in val.values())
    return False


def build_test_input(
    persona: dict,
    rule_name: str = "",
    target_overrides: typing.Optional[dict] = None,
) -> dict:
    """Build a full test input dict from a persona definition.

    Merges persona credentials with target_defaults + enriched fields
    for the resource type. Target overrides from the recursive builder
    are only applied for keys not already covered.
    """
    creds = copy.deepcopy(persona.get("credentials", {}))
    target = copy.deepcopy(persona.get("target_defaults", {}))

    # Add enriched target fields based on the policy name.
    # For MATCH_USER_ID: positive personas get their own user_id (they
    # own the resource). Denial personas get a fixed "resource-owner"
    # value (they do NOT own the resource).
    enriched = _get_enriched_fields(rule_name)
    is_deny = persona.get("deny", False)
    match_user_id = creds.get("user_id", "test-user") if not is_deny else "resource-owner"
    for k, v in enriched.items():
        if k not in target:
            if isinstance(v, str) and v == "MATCH_USER_ID":
                v = match_user_id
            elif isinstance(v, dict):
                v = copy.deepcopy(v)
                for dk, dv in v.items():
                    if isinstance(dv, str) and dv == "MATCH_USER_ID":
                        v[dk] = match_user_id
            target[k] = v

    _PLACEHOLDER_VALUES = {"foo", "bar", "baz"}
    if target_overrides:
        for k, v in target_overrides.items():
            if k not in target:
                # Skip placeholder values from the recursive builder
                if _is_placeholder(v, _PLACEHOLDER_VALUES):
                    continue
                target[k] = v

    # Strip null values (OPA/JSON null vs missing key semantics)
    creds = {k: v for k, v in creds.items() if v is not None}
    return {"input": {"credentials": creds, "target": target}}


def match_persona(
    minimal_test_data,
    personas: dict,
) -> typing.Optional[str]:
    """Map minimal credentials from recursive test builder to a persona.

    Examines the role and scope fields in the minimal test data
    to find the best-matching positive persona. Returns the persona
    name or None if no match.
    """
    if not isinstance(minimal_test_data, dict):
        return None
    inp = minimal_test_data.get("input", {})
    if not isinstance(inp, dict):
        return None
    creds = inp.get("credentials", {})
    if not isinstance(creds, dict):
        return None
    roles = set(creds.get("roles", []))
    has_project = bool(creds.get("project_id") or creds.get("tenant_id"))
    has_system = creds.get("system_scope") == "all"
    has_domain = bool(creds.get("domain_id"))

    positive = get_positive_personas(personas)

    if "service" in roles and "service_user" in positive:
        return "service_user"
    if "advsvc" in roles and "advsvc_user" in positive:
        return "advsvc_user"
    if has_system or ("admin" in roles and not has_project):
        return "system_admin" if "system_admin" in positive else None
    if "manager" in roles:
        return "domain_manager" if "domain_manager" in positive else (
            "project_manager" if "project_manager" in positive else None
        )
    if "admin" in roles and has_project:
        return "project_admin" if "project_admin" in positive else None
    if "reader" in roles:
        return "project_reader" if "project_reader" in positive else None
    if "member" in roles:
        return "project_member" if "project_member" in positive else None

    # Fallback: if there's data but no role match, use project_member
    if has_project and "project_member" in positive:
        return "project_member"

    return None


def format_positive_test(
    persona_name: str,
    persona: dict,
    policy_rule_name: str,
    oslo_rule_name: str,
    index: int,
    lib_pkg: str,
    target_overrides: typing.Optional[dict] = None,
) -> str:
    """Format a positive rego test line from a persona."""
    test_input = build_test_input(persona, oslo_rule_name, target_overrides)
    with_parts = []
    for data_key, data_val in test_input.items():
        with_parts.append(f"with {data_key} as {jsonutils.dumps(data_val)}")
    return (
        f"test_{persona_name}_{index} if "
        f"{policy_rule_name}.allow {' '.join(with_parts)}"
    )


def format_denial_test(
    persona_name: str,
    persona: dict,
    policy_rule_name: str,
    oslo_rule_name: str,
    index: int,
    lib_pkg: str,
    target_overrides: typing.Optional[dict] = None,
) -> str:
    """Format a denial rego test line from a persona.

    Uses 'not policy.allow' for OPA test compatibility and
    'test_deny_' prefix for C++ test runner compatibility.
    """
    test_input = build_test_input(persona, oslo_rule_name, target_overrides)
    with_parts = []
    for data_key, data_val in test_input.items():
        with_parts.append(f"with {data_key} as {jsonutils.dumps(data_val)}")
    return (
        f"test_deny_{persona_name}_{index} if "
        f"not {policy_rule_name}.allow {' '.join(with_parts)}"
    )


def generate_persona_tests(
    oslo_rule_name: str,
    personas: dict,
    lib_pkg: str,
    minimal_test_datas: typing.Optional[list] = None,
    check_str: str = "",
) -> list[str]:
    """Generate both positive and denial tests for a policy rule.

    For positive tests: uses the existing minimal test data to determine
    which personas should pass, then generates tests with full persona
    credentials.

    For denial tests: generates one test per denial persona.

    Structural rules are handled specially:
    - Always-allow (@): positive test only, no denial tests
    - Always-deny (!): no tests (rule is disabled)

    Returns list of rego test strings.
    """
    policy_rule_name = common.normalize_name(
        oslo_rule_name.split(":")[-1]
    )
    tests = []
    positive = get_positive_personas(personas)
    denial = get_denial_personas(personas)

    # Always-deny rules: no one can access, skip all tests
    if check_str.strip() == "!":
        return tests

    # Analyze the check_str to understand what the rule enforces.
    # This determines which personas are valid for positive/denial tests.
    _scope_keywords = [
        "project_id", "tenant_id", "domain_id", "system_scope",
    ]
    _identity_keywords = _scope_keywords + ["target.", "user_id"]

    has_identity_check = any(kw in check_str for kw in _identity_keywords)
    has_field_check = "field:" in check_str
    has_not_field = "not field:" in check_str

    # Rules that don't check identity (role-only, @, field-only):
    # denial personas with the right role will pass, skip denial tests.
    # Also skip when there's an open role path (role:X without scope) that
    # denial personas would satisfy.
    has_open_role_path = bool(
        re.search(r"\brole:\w+\b", check_str)
        and not has_identity_check
    )
    skip_denial = (
        check_str.strip() == "@"
        or (not has_identity_check and not has_field_check)
        or (has_not_field and not has_identity_check)
        or has_open_role_path
    )

    # Detect if rule requires domain_id or system_scope (not project-scoped).
    # Project-scoped personas (project_reader, project_member) can't pass
    # these because they have domain_id=null.
    # Also check sub-rules for domain scope requirements
    has_domain_rule = (
        "domain_id:" in check_str
        or "token.domain.id:" in check_str
        or "rule:base_list_grants" in check_str
        or "rule:base_check_grant" in check_str
        or "rule:domain_manager_grant" in check_str
    )
    requires_domain_or_system = (
        has_domain_rule
        and "project_id" not in check_str
        and "tenant_id" not in check_str
        and "user_id:" not in check_str
    )

    # Positive tests: match each minimal test case to a persona
    seen_personas = set()
    if minimal_test_datas:
        for td in minimal_test_datas:
            persona_name = match_persona(td, personas)
            if persona_name and persona_name not in seen_personas:
                # Skip project-scoped personas for rules requiring domain/system scope
                if requires_domain_or_system and persona_name in (
                    "project_reader", "project_member"
                ):
                    continue
                seen_personas.add(persona_name)
                target_overrides = None
                if isinstance(td, dict):
                    inp = td.get("input", {})
                    if isinstance(inp, dict):
                        target_overrides = inp.get("target")
                tests.append(format_positive_test(
                    persona_name,
                    positive[persona_name],
                    policy_rule_name,
                    oslo_rule_name,
                    len(tests),
                    lib_pkg,
                    target_overrides,
                ))

    # If no minimal data or no matches, test with all positive personas
    if not seen_personas:
        for name, persona in positive.items():
            if requires_domain_or_system and name in (
                "project_reader", "project_member"
            ):
                continue
            tests.append(format_positive_test(
                name, persona, policy_rule_name, oslo_rule_name,
                len(tests), lib_pkg,
            ))
            seen_personas.add(name)

    # Denial tests
    if not skip_denial:
        for name, persona in denial.items():
            tests.append(format_denial_test(
                name, persona, policy_rule_name, oslo_rule_name,
                len(tests), lib_pkg,
            ))

    return tests
