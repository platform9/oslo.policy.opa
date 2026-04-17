"""Discover available target dict fields per policy action.

Each service builds the target dict differently at enforcement time.
This module introspects the service packages (available inside the
generator container) to determine what fields are available in the
target dict for each API endpoint, using the correct source per service.

Sources verified against service source code:
- Neutron: neutron_lib.api.definitions RESOURCE_ATTRIBUTE_MAP (deep-merged)
- Nova: hand-built sparse dicts per API handler (2-3 fields)
- Cinder: oslo VersionedObject fields for existing resources
- Keystone: SQL model columns nested as target.<entity>.<field>
- Glance: domain proxy.Image properties via ImageTarget wrapper
"""

import logging
import re

LOG = logging.getLogger(__name__)

_ACTION_PREFIXES = (
    "create_", "get_", "update_", "delete_", "list_",
    "add_", "remove_", "check_", "revoke_",
)


def _policy_to_resource(policy_name):
    name = policy_name
    if name.startswith("identity:"):
        name = name[len("identity:"):]
    if name.startswith("os_compute_api:"):
        name = name[len("os_compute_api:"):]
    if ":" in name:
        name = name.split(":")[0]
    for prefix in _ACTION_PREFIXES:
        if name.startswith(prefix):
            name = name[len(prefix):]
            break
    return name


def _is_create_action(policy_name):
    name = policy_name
    if name.startswith("identity:"):
        name = name[len("identity:"):]
    if name.startswith("os_compute_api:"):
        name = name[len("os_compute_api:"):]
    if ":" in name:
        name = name.split(":")[0]
    return any(name.startswith(p) for p in ("create_", "add_"))


def _pluralize(name):
    if name.endswith("y") and not name.endswith("ey"):
        return name[:-1] + "ies"
    if name.endswith("s"):
        return name
    return name + "s"


def _lookup(resource_map, resource):
    """Try exact, plural, and singular lookups."""
    result = resource_map.get(resource)
    if result is None:
        result = resource_map.get(_pluralize(resource))
    if result is None and resource.endswith("s"):
        result = resource_map.get(resource[:-1])
    return result


def _build_neutron_map():
    """Neutron: target is the full resource dict from the plugin.

    For GET/SHOW/DELETE: plugin.get_<resource>() returns all visible
    API attributes (core + extensions merged at startup).
    For CREATE: target is the validated request body (same attribute
    set, only user-supplied values populated).
    Enrichment adds: domain_id, network:tenant_id, networks:shared,
    security_group:tenant_id, ext_parent:tenant_id per resource type.
    """
    from neutron_lib.api import definitions as defs
    import inspect

    merged = {}
    for _, mod in inspect.getmembers(defs, inspect.ismodule):
        ram = getattr(mod, "RESOURCE_ATTRIBUTE_MAP", None)
        if not ram:
            continue
        for resource, attrs in ram.items():
            if resource not in merged:
                merged[resource] = {}
            merged[resource].update(attrs)

    resources = {}
    for resource, attrs in merged.items():
        visible = sorted(k for k, v in attrs.items()
                         if v.get("is_visible", True))
        resources[resource] = visible

    # Per-resource enrichment from _enrich_target / _prepare_check
    port_extra = ["domain_id", "network:tenant_id", "networks:shared"]
    subnet_extra = ["domain_id", "network:tenant_id", "networks:shared"]
    sg_rule_extra = ["domain_id", "security_group:tenant_id"]
    ext_parent_extra = ["domain_id", "ext_parent:tenant_id"]
    default_extra = ["domain_id"]

    enrichment = {
        "ports": port_extra,
        "subnets": subnet_extra,
        "security_group_rules": sg_rule_extra,
        "port_forwardings": ext_parent_extra,
        "conntrack_helpers": ext_parent_extra,
        "local_ips": ext_parent_extra,
        "bandwidth_limit_rules": ext_parent_extra,
        "dscp_marking_rules": ext_parent_extra,
        "minimum_bandwidth_rules": ext_parent_extra,
        "minimum_packet_rate_rules": ext_parent_extra,
        "packet_rate_limit_rules": ext_parent_extra,
    }

    # Explicit mappings for policies whose resource names don't match
    # API definition keys (registered by extensions at runtime)
    _POLICY_RESOURCE_ALIASES = {
        "floatingip_port_forwarding": "floatingips",
        "router_conntrack_helper": "routers",
        "local_ip_port_association": "local_ips",
        "policy_bandwidth_limit_rule": "alias_bandwidth_limit_rules",
        "policy_dscp_marking_rule": "alias_dscp_marking_rules",
        "policy_minimum_bandwidth_rule": "alias_minimum_bandwidth_rules",
        "policy_minimum_packet_rate_rule": "alias_minimum_packet_rate_rules",
        "policy_packet_rate_limit_rule": "alias_bandwidth_limit_rules",
        "alias_bandwidth_limit_rule": "alias_bandwidth_limit_rules",
        "alias_dscp_marking_rule": "alias_dscp_marking_rules",
        "alias_minimum_bandwidth_rule": "alias_minimum_bandwidth_rules",
        "alias_minimum_packet_rate_rule": "alias_minimum_packet_rate_rules",
        "rbac_policy": "rbac_policies",
    }
    for alias, target in _POLICY_RESOURCE_ALIASES.items():
        if target in resources and alias not in resources:
            resources[alias] = resources[target]

    return resources, enrichment, default_extra


def _build_nova_map():
    """Nova: target is a hand-built sparse dict per API handler.

    Nova does NOT serialize Instance.fields into the target. Each API
    handler passes a minimal dict. The common fields across all server
    operations are project_id and user_id. servers:create also adds
    availability_zone. _enrich_target_domain adds domain_id.
    """
    resources = {
        "servers": ["availability_zone", "project_id", "user_id"],
        "server": ["availability_zone", "project_id", "user_id"],
        "keypairs": ["user_id"],
        "server-groups": ["project_id", "user_id"],
        "server_groups": ["project_id", "user_id"],
    }
    default_extra = ["domain_id"]
    return resources, {}, default_extra


def _build_cinder_map():
    """Cinder: target is OVO obj_to_primitive() for existing resources.

    For existing: full VersionedObject fields merged onto {project_id, user_id}.
    For create: just {project_id, user_id}.
    _enrich_target_domain adds domain_id.
    """
    resources = {}
    try:
        from cinder.objects import volume as vol_obj
        from cinder.objects import backup as bak_obj
        from cinder.objects import snapshot as snap_obj

        ovo_map = {
            "volume": vol_obj.Volume,
            "backup": bak_obj.Backup,
            "snapshot": snap_obj.Snapshot,
        }
        for name, cls in ovo_map.items():
            fields = sorted(cls.fields.keys())
            resources[name] = fields
            resources[_pluralize(name)] = fields
    except Exception as e:
        LOG.debug("Could not import cinder OVO objects: %s", e)
        # Fall back to DB model columns
        from cinder.db.sqlalchemy import models
        for name, model in [
            ("volume", models.Volume),
            ("backup", models.Backup),
            ("snapshot", models.Snapshot),
        ]:
            if hasattr(model, "__table__"):
                cols = sorted(c.key for c in model.__table__.columns)
                resources[name] = cols
                resources[_pluralize(name)] = cols

    # Simple target resources
    for name in ["type", "group", "group_snapshot", "qos_specs",
                  "clusters", "attachment"]:
        resources[name] = ["project_id", "user_id"]

    default_extra = ["domain_id"]
    return resources, {}, default_extra


def _build_keystone_map():
    """Keystone: target is nested dicts flattened to dot-path keys.

    build_target returns {'user': user_dict} which gets flattened to
    target.user.id, target.user.domain_id, etc. SQL model columns are
    the source for entity fields.
    """
    from keystone.identity.backends.sql_model import User, Group
    from keystone.resource.backends.sql_model import Project
    from keystone.assignment.role_backends.sql_model import RoleTable
    from keystone.credential.backends.sql import CredentialModel
    from keystone.trust.backends.sql import TrustModel

    def _model_cols(model):
        if hasattr(model, "__table__"):
            return sorted(c.key for c in model.__table__.columns)
        return []

    entity_models = {
        "user": User,
        "group": Group,
        "project": Project,
        "domain": Project,
        "role": RoleTable,
        "credential": CredentialModel,
        "trust": TrustModel,
    }

    resources = {}
    for entity, model in entity_models.items():
        cols = _model_cols(model)
        resources[entity] = [f"target.{entity}.{c}" for c in cols]

    resources["token"] = [
        "target.token.user_id",
        "target.token.user.domain.id",
    ]

    # Grant operations can reference multiple entities
    resources["grant"] = sorted(set(
        resources.get("user", [])
        + resources.get("project", [])
        + resources.get("domain", [])
        + resources.get("role", [])
    ))

    return resources, {}, []


def _build_glance_map():
    """Glance: target is ImageTarget wrapper around proxy.Image.

    For existing images: all proxy.Image properties + key_transforms
    (id->image_id, project_id->owner, member_id->member).
    For add_image: just {project_id, owner, visibility}.
    _enrich_target_domain adds domain_id.
    """
    try:
        from glance.domain import proxy
        import inspect

        fields = set()
        for name, val in inspect.getmembers(proxy.Image):
            if name.startswith("_") or name == "locations":
                continue
            if callable(val) and not isinstance(
                getattr(type(proxy.Image), name, None), property
            ):
                continue
            fields.add(name)

        # ImageTarget key_transforms
        fields.add("project_id")
        fields.discard("locations")

        existing = sorted(fields)
    except Exception as e:
        LOG.warning("Could not introspect glance proxy.Image: %s", e)
        existing = []

    resources = {
        "image": existing,
        "images": existing,
        # add_image gets a minimal target
        "_add_image": ["owner", "project_id", "visibility"],
    }

    default_extra = ["domain_id"]
    return resources, {}, default_extra


_BUILDERS = {
    "neutron": _build_neutron_map,
    "nova": _build_nova_map,
    "cinder": _build_cinder_map,
    "keystone": _build_keystone_map,
    "glance": _build_glance_map,
}


def build_policy_target_map(namespace):
    """Build policy_name -> [available target fields] for a service.

    Returns a dict mapping policy names to sorted lists of fields
    available in the target dict at enforcement time.
    """
    builder = _BUILDERS.get(namespace)
    if not builder:
        LOG.warning("No target attribute builder for namespace %s", namespace)
        return {}

    resources, enrichment, default_extra = builder()

    return _TargetAttrMap(resources, enrichment, default_extra)


class _TargetAttrMap:
    """Lazy lookup that resolves policy names to available target fields."""

    def __init__(self, resources, enrichment, default_extra):
        self._resources = resources
        self._enrichment = enrichment
        self._default_extra = default_extra

    def get(self, policy_name, default=None):
        """Look up available target fields for a policy name."""
        # Glance special case: add_image has a minimal target
        if policy_name == "add_image" and "_add_image" in self._resources:
            fields = list(self._resources["_add_image"])
            for f in self._default_extra:
                if f not in fields:
                    fields.append(f)
            return sorted(fields)

        resource = _policy_to_resource(policy_name)
        fields_list = _lookup(self._resources, resource)
        if fields_list is None:
            return default

        fields = list(fields_list)

        # Cinder/Nova create actions have minimal targets
        if _is_create_action(policy_name) and resource not in (
            "network", "port", "subnet", "router", "floatingip",
            "security_group", "security_group_rule", "subnetpool",
            "trunk", "segment",
        ):
            # Non-neutron creates typically just have project_id, user_id
            if "project_id" in fields and len(fields) > 5:
                fields = ["project_id", "user_id"]

        # Add resource-specific enrichment
        enriched = self._enrichment.get(resource)
        if enriched is None:
            enriched = self._enrichment.get(_pluralize(resource))
        if enriched is None:
            enriched = self._default_extra

        for f in enriched:
            if f not in fields:
                fields.append(f)

        return sorted(fields)
