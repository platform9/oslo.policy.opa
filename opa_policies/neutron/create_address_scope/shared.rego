package create_address_scope.shared

import data.neutron_lib

# Create a shared address scope
# POST  /address-scopes
# Intended scope(s): project
# Target attrs: domain_id, id, ip_version, name, shared, tenant_id
# "create_address_scope:shared": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
