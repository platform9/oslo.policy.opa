package update_subnetpool.is_dflt

import data.neutron_lib

# Update ``is_default`` attribute of a subnetpool
# PUT  /subnetpools/{id}
# Intended scope(s): project
# Target attrs: address_scope_id, default_prefixlen, default_quota, domain_id, id, ip_version, is_default, max_prefixlen, min_prefixlen, name, prefixes, shared, tenant_id
# "update_subnetpool:is_default": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
