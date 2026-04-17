package identity.get_role

import data.keystone_lib

# Show role details.
# GET  /v3/roles/{role_id}
# HEAD  /v3/roles/{role_id}
# Intended scope(s): system, domain, project
# Target attrs: target.role.description, target.role.domain_id, target.role.extra, target.role.id, target.role.name
# "identity:get_role": "rule:admin_required or (role:reader and system_scope:all)"

allow if {
	is_domain_manager_and_is_domain_managed_role
}

allow if {
	# rule:base_get_role
	keystone_lib.base_get_role
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

# (rule:is_domain_manager and rule:is_domain_managed_role)
is_domain_manager_and_is_domain_managed_role if {
	keystone_lib.is_domain_manager
	keystone_lib.is_domain_managed_role
}
