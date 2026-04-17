package identity.update_user

import data.keystone_lib

# Update a user, including administrative password resets.
# PATCH  /v3/users/{user_id}
# Intended scope(s): system, domain, project
# Target attrs: target.user.created_at, target.user.default_project_id, target.user.domain_id, target.user.enabled, target.user.extra, target.user.id, target.user.last_active_at
# "identity:update_user": "rule:admin_required"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_user_domain_id
}

allow if {
	# rule:base_update_user
	keystone_lib.base_update_user
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
