package update_address_scope.shared

import data.neutron_lib

# Update ``shared`` attribute of an address scope
# PUT  /address-scopes/{id}
# Intended scope(s): project
# Target attrs: domain_id, id, ip_version, name, shared, tenant_id
# "update_address_scope:shared": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
