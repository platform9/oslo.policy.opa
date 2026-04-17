package identity.list_role_assignments

import data.keystone_lib

# List role assignments.
# GET  /v3/role_assignments
# HEAD  /v3/role_assignments
# Intended scope(s): system, domain, project
# "identity:list_role_assignments": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.domain_id)s)"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_domain_id
}

allow if {
	# rule:base_list_role_assignments
	keystone_lib.base_list_role_assignments
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

# (rule:is_domain_manager and token.domain.id:%(target.domain_id)s)
is_domain_manager_and_creds_token_domain_id_eq_input_target_domain_id if {
	keystone_lib.is_domain_manager
	input.credentials.token.domain.id == input.target["target.domain_id"]
}
