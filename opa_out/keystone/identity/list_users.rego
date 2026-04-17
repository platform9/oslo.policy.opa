package identity.list_users

import data.keystone_lib

# List users.
# GET  /v3/users
# HEAD  /v3/users
# Intended scope(s): system, domain, project
# Target attrs: target.user.created_at, target.user.default_project_id, target.user.domain_id, target.user.enabled, target.user.extra, target.user.id, target.user.last_active_at
# "identity:list_users": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.domain_id)s)"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_domain_id
}

allow if {
	# rule:base_list_users
	keystone_lib.base_list_users
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
