package identity.delete_group

import data.keystone_lib

# Delete group.
# DELETE  /v3/groups/{group_id}
# Intended scope(s): system, domain, project
# Target attrs: target.group.description, target.group.domain_id, target.group.extra, target.group.id, target.group.name
# "identity:delete_group": "rule:admin_required"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_group_domain_id
}

allow if {
	# rule:base_delete_group
	keystone_lib.base_delete_group
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
