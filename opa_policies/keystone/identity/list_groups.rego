package identity.list_groups

import data.keystone_lib

# List groups.
# GET  /v3/groups
# HEAD  /v3/groups
# Intended scope(s): system, domain, project
# Target attrs: target.group.description, target.group.domain_id, target.group.extra, target.group.id, target.group.name
# "identity:list_groups": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.group.domain_id)s)"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_group_domain_id
}

allow if {
	reader_and_creds_system_scope_eq_all
}

allow if {
	# rule:base_list_groups
	keystone_lib.base_list_groups
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

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}
