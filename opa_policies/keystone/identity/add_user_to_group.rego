package identity.add_user_to_group

import data.keystone_lib

# Add user to group.
# PUT  /v3/groups/{group_id}/users/{user_id}
# Intended scope(s): system, domain, project
# "identity:add_user_to_group": "rule:admin_required"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_group_domain_id_and_creds_token_domain_id_eq_input_target_user_domain_id
}

allow if {
	# rule:base_add_user_to_group
	keystone_lib.base_add_user_to_group
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

# (rule:is_domain_manager and token.domain.id:%(target.group.domain_id)s and token.domain.id:%(target.user.domain_id)s)
is_domain_manager_and_creds_token_domain_id_eq_input_target_group_domain_id_and_creds_token_domain_id_eq_input_target_user_domain_id if {
	keystone_lib.is_domain_manager
	input.credentials.token.domain.id == input.target["target.group.domain_id"]
	input.credentials.token.domain.id == input.target["target.user.domain_id"]
}
