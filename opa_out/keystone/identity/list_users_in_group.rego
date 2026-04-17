package identity.list_users_in_group

import data.keystone_lib

# List members of a specific group.
# GET  /v3/groups/{group_id}/users
# HEAD  /v3/groups/{group_id}/users
# Intended scope(s): system, domain, project
# "identity:list_users_in_group": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.group.domain_id)s)"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_group_domain_id
}

allow if {
	# rule:base_list_users_in_group
	keystone_lib.base_list_users_in_group
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

# (rule:is_domain_manager and token.domain.id:%(target.group.domain_id)s)
is_domain_manager_and_creds_token_domain_id_eq_input_target_group_domain_id if {
	keystone_lib.is_domain_manager
	input.credentials.token.domain.id == input.target["target.group.domain_id"]
}
