package identity.list_roles

import data.keystone_lib

# List roles.
# GET  /v3/roles
# HEAD  /v3/roles
# Intended scope(s): system, domain, project
# Target attrs: target.role.description, target.role.domain_id, target.role.extra, target.role.id, target.role.name
# "identity:list_roles": "rule:admin_required or (role:reader and system_scope:all)"

allow if {
	# rule:is_domain_manager
	keystone_lib.is_domain_manager
}

allow if {
	# rule:base_list_roles
	keystone_lib.base_list_roles
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}
