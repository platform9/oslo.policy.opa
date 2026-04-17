package create_subnetpool.shared

import data.neutron_lib

# Create a shared subnetpool
# POST  /subnetpools
# Intended scope(s): project
# Target attrs: address_scope_id, default_prefixlen, default_quota, domain_id, id, ip_version, is_default, max_prefixlen, min_prefixlen, name, prefixes, shared, tenant_id
# "create_subnetpool:shared": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
