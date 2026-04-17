package identity.list_user_projects

import data.keystone_lib

# List projects for user.
# GET  /v3/users/{user_id}/projects
# Intended scope(s): system, domain, project
# "identity:list_user_projects": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s) or user_id:%(target.user.id)s"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_user_domain_id
}

allow if {
	# rule:base_list_user_projects
	keystone_lib.base_list_user_projects
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

# (rule:is_domain_manager and token.domain.id:%(target.user.domain_id)s)
is_domain_manager_and_creds_token_domain_id_eq_input_target_user_domain_id if {
	keystone_lib.is_domain_manager
	input.credentials.token.domain.id == input.target["target.user.domain_id"]
}
