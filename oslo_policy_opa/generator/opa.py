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

import logging
import re
import pathlib
import sys
import textwrap
import typing
import warnings

import oslo_policy

from oslo_policy import policy

from oslo_policy_opa.generator import types
from oslo_policy_opa.generator import common

LOG = logging.getLogger(__name__)


IMPORT_REGEX = re.compile(r"(?:\w+_)?lib\.(\w+)\b", flags=re.M)


def _get_opa_rule(
    rule: oslo_policy.policy._BaseRule,
    results: dict[str, list[str]],
    converted_rules: dict[str, types.BaseOpaCheck],
    namespace: typing.Optional[str] = None,
) -> types.BaseOpaCheck:
    """Get the OPA check from OsloPolicy check with hacks"""
    rule_check = rule.check
    opa_rule = None
    if namespace == "neutron":
        # For neutron we need some hacks to deal with custom checks
        if "floatingip_port_forwarding" in str(rule.name):
            # floatingip_port_forwarding ext_parent_owner means floatingip.
            # Replace it for easier conversion
            rule_check = oslo_policy._parser.parse_rule(
                str(rule.check).replace(
                    "rule:ext_parent_owner",
                    "tenant_id:%(ext_parent_floatingip:tenant_id)s",
                )
            )
        elif "policy" in rule.name and "rule" in rule.name:
            # xxx_policy_yyy_rule ext_parent_owner means policy.
            # Replace it for easier conversion
            rule_check = oslo_policy._parser.parse_rule(
                str(rule.check).replace(
                    "rule:ext_parent_owner",
                    "tenant_id:%(ext_parent_policy:tenant_id)s",
                )
            )
    if isinstance(rule.check, oslo_policy._checks.RuleCheck):
        if rule.check.match in converted_rules and rule.check.match in results:
            # The referred rule is already converted and it is not a regular lib
            # rule (i.e. in neutron
            # "delete_alias_minimum_packet_rate_rule: rule:delete_policy_minimum_packet_rate_rule)"
            # in this case we should replace referred rule with the already
            # converted value
            opa_rule = converted_rules[rule.check.match]
    if not opa_rule:
        opa_rule = types.convert_oslo_policy_check_to_opa_check(rule_check)
    return opa_rule


def _translate_default_rule(
    rule: oslo_policy.policy._BaseRule,
    results: dict[str, list[str]],
    converted_rules: dict[str, types.BaseOpaCheck],
    namespace: typing.Optional[str] = None,
    rule_operations: typing.Optional[list[dict]] = None,
    rule_metadata: typing.Optional[oslo_policy.policy._BaseRule] = None,
    target_attr_map=None,
):
    """Convert policy.RuleDefault or policy.DocumentedRuleDefault into internal OPA friendly structure

    :param oslo_policy.policy._BaseRule rule: A policy.RuleDefault or policy.DocumentedRuleDefault object
    :param dict results: A dictionary with relevant policy rules that is shared globally
    :param dict converted_rules: converted rules
    :param namespace: Namespace name that is prepended to the Rule checks for
        structuring a policy rule into dedicated policy files.
    :param rule_operations: Operations value for the Rule if it is not an
        instance of DocumentedRuleDefault
    :param rule_metadata: The registered default rule with description,
        scope_types, and operations metadata. Used for comments when the
        active rule is a YAML override that lacks this metadata.
    """

    opa_rule = _get_opa_rule(rule, results, converted_rules, namespace)
    converted_rules[rule.name] = opa_rule
    lib_part_rules: dict[str, list[str]] = {}
    opa_part_rules = opa_rule.get_opa_policy(lib_part_rules)
    # Use registered default for description/operations/scope_types metadata
    help_rule = rule_metadata if rule_metadata else rule
    rule_description = _get_rule_help(
        help_rule, rule_operations, target_attr_map=target_attr_map,
    )
    if hasattr(rule, "operations") and rule.operations or rule_operations:
        # This is the final role
        results.setdefault(rule.name, [rule_description])
        results[rule.name].extend(
            [
                f"allow {opa_rule.get_header()}  {rule}\n{opa_rule.get_footer()}\n"
                for rule in opa_part_rules
            ]
        )
        results[rule.name].extend(
            [
                f"{subrule}\n"
                for k, rules in lib_part_rules.items()
                if k != "lib"
                for subrule in rules
            ]
        )
        if "lib" in lib_part_rules:
            # Append additional lib rules if those are not already there
            for orule in lib_part_rules["lib"]:
                if orule not in results["lib"]:
                    results["lib"].append(orule)
    else:
        # a library "rule"
        LOG.info(
            f"A library rule {rule} with {opa_part_rules} and {lib_part_rules} {rule.check}"
        )
        rule_name = (
            common.normalize_name(rule.name)
            if rule.name != "rule"
            else "_rule"
        )
        results.setdefault("lib", [])
        results["lib"].extend(
            [
                f"{rule_name} {opa_rule.get_header()} {rule}\n{opa_rule.get_footer()}\n"
                for rule in opa_part_rules
            ]
        )
        if lib_part_rules:
            results["lib"].extend(
                [
                    f"{subrule}\n"
                    for rule in lib_part_rules.values()
                    for subrule in rule
                ]
            )

    return


def _generate_rule_tests(
    rule: oslo_policy.policy._BaseRule,
    results: dict[str, list[str]],
    converted_rules: dict[str, types.BaseOpaCheck],
    policy_tests: dict[str, list[str]],
    namespace: typing.Optional[str] = None,
    rule_operations: typing.Optional[list[dict]] = None,
    personas: typing.Optional[dict] = None,
    lib_pkg: str = "lib",
):
    """Generate OPA tests for the rule.

    :param oslo_policy.policy._BaseRule rule: A policy.RuleDefault or
        policy.DocumentedRuleDefault object
    :param dict results: A dictionary with relevant policy rules that is
        shared globally
    :param dict converted_rules: converted rules
    :param namespace: Namespace name that is prepended to the Rule checks for
        structuring a policy rule into dedicated policy files.
    :param personas: Optional persona definitions for rich test generation.
    :param lib_pkg: The namespaced lib package name (e.g. "neutron_lib").
    """
    opa_rule = _get_opa_rule(rule, results, converted_rules, namespace)

    if personas:
        from oslo_policy_opa.generator import personas as personas_mod
        # Get minimal test data from the recursive builder to determine
        # which allow paths exist (admin, member, service, etc.)
        minimal_datas = opa_rule.get_opa_policy_test_data(
            converted_rules, rule.name
        )
        check_str = str(rule.check) if hasattr(rule, 'check') else ""
        opa_rule_tests = personas_mod.generate_persona_tests(
            rule.name, personas, lib_pkg, minimal_datas,
            check_str=check_str,
        )
    else:
        opa_rule_tests = opa_rule.get_opa_policy_tests(
            converted_rules, rule.name
        )

    policy_tests[rule.name] = opa_rule_tests

    return


def _get_rule_help(
    rule: oslo_policy.policy._BaseRule,
    rule_operations: typing.Optional[list[dict]] = None,
    target_attr_map: typing.Optional[dict] = None,
) -> str:
    text: str = f'"{rule.name}": "{rule.check_str}"\n'
    op = ""
    for operation in getattr(rule, "operations", rule_operations or []):
        if operation["method"] and operation["path"]:
            op += "# {method}  {path}\n".format(
                method=operation["method"], path=operation["path"]
            )
    intended_scope = ""
    if getattr(rule, "scope_types", None) is not None:
        intended_scope = (
            "# Intended scope(s): " + ", ".join(rule.scope_types) + "\n"
        )
    target_line = ""
    if target_attr_map:
        fields = target_attr_map.get(rule.name)
        if fields:
            target_line = "# Target attrs: " + ", ".join(fields) + "\n"
    comment = "# "
    text = f"{op}{intended_scope}{target_line}{comment}{text}\n"
    if rule.description:
        text = _format_help_text(rule.description) + "\n" + text

    return text


def _format_help_text(description):
    """Format a comment for a policy based on the description provided.

    :param description: A string with helpful text.
    :returns: A line wrapped comment, or blank comment if description is None
    """
    if not description:
        return "#"

    formatted_lines = []
    paragraph = []

    def _wrap_paragraph(lines):
        return textwrap.wrap(
            " ".join(lines), 70, initial_indent="# ", subsequent_indent="# "
        )

    for line in description.strip().splitlines():
        if not line.strip():
            # empty line -> line break, so dump anything we have
            formatted_lines.extend(_wrap_paragraph(paragraph))
            formatted_lines.append("#")
            paragraph = []
        elif len(line) == len(line.lstrip()):
            # no leading whitespace = paragraph, which should be wrapped
            paragraph.append(line.rstrip())
        else:
            # leading whitespace - literal block, which should not be wrapping
            if paragraph:
                # ...however, literal blocks need a new line before them to
                # delineate things
                # TODO(stephenfin): Raise an exception here and stop doing
                # anything else in oslo.policy 2.0
                warnings.warn(
                    "Invalid policy description: literal blocks must be "
                    "preceded by a new line. This will raise an exception in "
                    f"a future version of oslo.policy:\n{description}",
                    FutureWarning,
                )
                formatted_lines.extend(_wrap_paragraph(paragraph))
                formatted_lines.append("#")
                paragraph = []

            formatted_lines.append(f"# {line.rstrip()}")

    if paragraph:
        # dump anything we might still have in the buffer
        formatted_lines.extend(_wrap_paragraph(paragraph))

    return "\n".join(formatted_lines)


# Patterns that indicate an ownership check comparing credentials to target.
# These rules need same_domain for domain isolation.
_OWNERSHIP_PATTERNS = [
    r"input\.credentials\.project_id == input\.target\.project_id",
    r"input\.target\.project_id == input\.credentials\.project_id",
    r"input\.credentials\.tenant_id == input\.target\.tenant_id",
    r"input\.target\.tenant_id == input\.credentials\.tenant_id",
    r'input\.target\["[^"]*:tenant_id"\] == input\.credentials\.tenant_id',
    r"input\.credentials\.tenant_id == input\.target\[",
]


_ADMIN_ROLE_PATTERN = r'"admin" in input\.credentials\.roles'

# Legacy admin bypass patterns (is_admin:True, is_admin_project:True).
# These grant admin access via boolean flags rather than role checks
# and also need same_domain for domain isolation.
_LEGACY_ADMIN_PATTERNS = [
    r"input\.credentials\.is_admin\b",
    r"input\.credentials\.is_admin_project\b",
]

# Patterns that indicate the rule already has scope/domain handling
_ALREADY_SCOPED_PATTERNS = [
    r"same_domain",
    r"system_scope",
    r"input\.credentials\.domain_id == input\.target\.domain_id",
]

# same_domain definition emitted at the top of every service lib file.
_SAME_DOMAIN_BLOCK = """\
# Domain membership: caller and target resource belong to the same domain.
# target.domain_id is populated by the service enforcement layer.
same_domain if {
  input.credentials.system_scope == "all"
}

same_domain if {
  input.credentials.project_domain_id == input.target.domain_id
}

same_domain if {
  input.credentials.domain_id == input.target.domain_id
}

"""


def _is_ownership_check(rule_text):
    """Check if a rule body contains an ownership comparison."""
    for pattern in _OWNERSHIP_PATTERNS:
        if re.search(pattern, rule_text):
            return True
    return False


def _is_ungated_admin_check(rule_text):
    """Check if a rule body grants admin access without scope gating."""
    if not re.search(_ADMIN_ROLE_PATTERN, rule_text):
        return False
    # Already has ownership check -- handled by _is_ownership_check
    if _is_ownership_check(rule_text):
        return False
    # Already has scope/domain handling
    for pattern in _ALREADY_SCOPED_PATTERNS:
        if re.search(pattern, rule_text):
            return False
    return True


def _is_legacy_admin_check(rule_text):
    """Check if a rule grants admin access via legacy is_admin flag."""
    for pattern in _LEGACY_ADMIN_PATTERNS:
        if re.search(pattern, rule_text):
            for scoped in _ALREADY_SCOPED_PATTERNS:
                if re.search(scoped, rule_text):
                    return False
            return True
    return False


def _needs_same_domain(rule_text):
    """Check if a rule needs same_domain injection."""
    return (
        _is_ownership_check(rule_text)
        or _is_ungated_admin_check(rule_text)
        or _is_legacy_admin_check(rule_text)
    )


def _inject_same_domain(rule_text, qualified=None):
    """Append same_domain to a rule body.

    :param qualified: If set, use this qualified name (e.g. neutron_lib.same_domain)
        instead of bare same_domain. Required for policy files that have
        their own package scope.
    """
    domain_ref = qualified or "same_domain"
    if rule_text.rstrip().endswith("}"):
        return rule_text.rstrip()[:-1] + "  " + domain_ref + "\n}"
    return rule_text


def generate_opa_policy(conf):
    """Generate a OPA policies.

    This takes all registered policies and merges them with what's defined in
    a policy file and outputs the result. That result is the effective policy
    that will be honored by policy checks.

    :param conf: Configuration options.
    """
    namespace = conf.namespace
    output_dir = conf.output_dir
    policy_file = conf.policy_file
    persona_dir = getattr(conf, 'persona_dir', None)
    generate_policy_test: bool = True
    enforcer = common.get_enforcer(namespace)

    # Load persona definitions for rich test generation
    from oslo_policy_opa.generator import personas as personas_mod
    from oslo_policy_opa.generator import target_attrs
    personas = personas_mod.load_personas(namespace, persona_dir)

    # Ensure that files have been parsed
    if policy_file:
        enforcer.policy_file = policy_file
    enforcer.load_rules(force_reload=True)

    # Introspect service for available target fields per resource
    try:
        target_attr_map = target_attrs.build_policy_target_map(namespace)
        LOG.info("Loaded available target attributes for %s", namespace)
    except Exception as e:
        LOG.warning("Could not load target attributes for %s: %s", namespace, e)
        target_attr_map = None

    file_rules = [
        policy.RuleDefault(name, default.check_str)
        for name, default in enforcer.file_rules.items()
    ]
    # registered_rules = [
    #     policy.RuleDefault(name, default.check_str)
    #     for name, default in enforcer.registered_rules.items()
    #     if name not in enforcer.file_rules
    # ]

    policies = common.get_policies_dict([namespace])

    opa_policies: dict[str, list[str]] = {}
    opa_test_policies: dict[str, list[str]] = {}
    converted_rules: dict[str, types.BaseOpaCheck] = {}
    for section in sorted(policies.keys()):
        rule_defaults = list(policies[section])
        for default_rule in rule_defaults:
            if default_rule.name in enforcer.file_rules:
                rule = enforcer.file_rules[default_rule.name]
            else:
                rule = default_rule

            _translate_default_rule(
                rule,
                opa_policies,
                converted_rules,
                namespace=namespace,
                rule_operations=getattr(default_rule, "operations", None),
                rule_metadata=default_rule,
                target_attr_map=target_attr_map,
            )

        # Custom policy file may contain additional "library" rules referred by
        # the regular rules. Find them and convert them
        override_additional_rules = {x.name for x in file_rules}.difference(
            {x.name for x in rule_defaults}
        )
        for custom_rule in override_additional_rules:
            rule = enforcer.file_rules[custom_rule]
            LOG.info(f"Generating overridden rule {custom_rule} {rule}")

            _translate_default_rule(
                rule,
                opa_policies,
                converted_rules,
                namespace=namespace,
                rule_operations=None,
                target_attr_map=target_attr_map,
            )

        # Another iteration over the rules to generate tests for rules while
        # being sure all rules have been converted.
        for default_rule in rule_defaults:
            if default_rule.name in enforcer.file_rules:
                rule = enforcer.file_rules[default_rule.name]
            else:
                rule = default_rule

            _generate_rule_tests(
                rule,
                opa_policies,
                converted_rules,
                opa_test_policies,
                namespace=namespace,
                rule_operations=getattr(default_rule, "operations", None),
                personas=personas,
                lib_pkg=f"{namespace}_lib",
            )

    lib_pkg = f"{namespace}_lib"
    lib_output = None
    if output_dir:
        lib_fname = pathlib.Path(output_dir, namespace).with_suffix(".rego")
        lib_fname.parent.mkdir(parents=True, exist_ok=True)
        lib_output = open(lib_fname, "w") if output_dir else sys.stdout
        lib_output.write(f"package {lib_pkg}\n\n")
        if namespace != "keystone":
            lib_output.write(_SAME_DOMAIN_BLOCK)
    for rule, opa_policy in opa_policies.items():
        LOG.info(f"Writing rule {rule}")
        if rule != "lib":
            # final policy rule
            if output_dir:
                fname_parts = rule.split(":")
                fname_parts[-1] = f"{fname_parts[-1]}.rego"
                fname = pathlib.Path(output_dir, *fname_parts)
                fname.parent.mkdir(parents=True, exist_ok=True)
                output = open(fname, "w")
            else:
                output = sys.stdout

            output.write(
                f"package {common.normalize_name(rule.replace(':', '.').replace('-', '_'))}\n\n"
            )
            policy_text = "".join(opa_policy)
            needs_lib_import = "lib." in policy_text
            # Check if any inline rules need same_domain injection
            if not needs_lib_import:
                for pr in opa_policy:
                    if _needs_same_domain(pr):
                        needs_lib_import = True
                        break
            if needs_lib_import:
                output.write(f"import data.{lib_pkg}\n\n")
            for opa_policy_rule in opa_policy:
                if namespace == "glance":
                    opa_policy_rule = opa_policy_rule.replace(
                        "member_id", "member"
                    )
                # Replace lib. references with namespace-qualified package
                opa_policy_rule = opa_policy_rule.replace("lib.", f"{lib_pkg}.")
                # Inject same_domain into inline rules that need it.
                # Keystone handles domain isolation natively in its API layer.
                if namespace != "keystone" and _needs_same_domain(opa_policy_rule):
                    opa_policy_rule = _inject_same_domain(
                        opa_policy_rule, qualified=f"{lib_pkg}.same_domain"
                    )
                output.write(opa_policy_rule)
                output.write("\n")
            if output != sys.stdout:
                output.close()

            tests = opa_test_policies.get(rule)
            if generate_policy_test and tests:
                fname_parts = rule.split(":")
                fname_parts[-1] = f"{fname_parts[-1]}_test.rego"
                packagename_parts = rule.split(":")
                fname = pathlib.Path(output_dir, *fname_parts)
                fname.parent.mkdir(parents=True, exist_ok=True)
                output = open(fname, "w")

                output.write(f"package {common.normalize_name(rule)}_test\n\n")
                output.write(
                    f"import data.{'.'.join(common.normalize_name(x) for x in packagename_parts)}\n\n"
                )
                num: int = 1
                for opa_policy_rule_test in tests:
                    if namespace == "glance":
                        opa_policy_rule_test = opa_policy_rule_test.replace(
                            "member_id", "member"
                        )
                    output.write(opa_policy_rule_test)
                    output.write("\n")
                    num += 1
                if output != sys.stdout:
                    output.close()
        else:
            if lib_output:
                for opa_policy_rule in opa_policy:
                    rule_text = opa_policy_rule.replace("lib.", "")
                    # Add same_domain to ownership checks and ungated
                    # admin checks for domain isolation.
                    # Keystone handles domain isolation natively.
                    if namespace != "keystone" and _needs_same_domain(rule_text):
                        rule_text = _inject_same_domain(rule_text)
                    lib_output.write(rule_text)
                    lib_output.write("\n\n")
    if lib_output:
        lib_output.close()
