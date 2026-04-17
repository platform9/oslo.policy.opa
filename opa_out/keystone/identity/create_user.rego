package identity.create_user

import data.keystone_lib

# Create a user.
# POST  /v3/users
# Intended scope(s): system, domain, project
# Target attrs: target.user.created_at, target.user.default_project_id, target.user.domain_id, target.user.enabled, target.user.extra, target.user.id, target.user.last_active_at
# "identity:create_user": "rule:admin_required"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_user_domain_id
}

allow if {
	# rule:base_create_user
	keystone_lib.base_create_user
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
