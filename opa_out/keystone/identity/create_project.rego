package identity.create_project

import data.keystone_lib

# Create project.
# POST  /v3/projects
# Intended scope(s): system, domain, project
# Target attrs: target.project.description, target.project.domain_id, target.project.enabled, target.project.extra, target.project.id, target.project.is_domain, target.project.name, target.project.parent_id
# "identity:create_project": "rule:admin_required"

allow if {
	is_domain_manager_and_creds_token_domain_id_eq_input_target_project_domain_id
}

allow if {
	# rule:base_create_project
	keystone_lib.base_create_project
}

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

# (rule:is_domain_manager and token.domain.id:%(target.project.domain_id)s)
is_domain_manager_and_creds_token_domain_id_eq_input_target_project_domain_id if {
	keystone_lib.is_domain_manager
	input.credentials.token.domain.id == input.target["target.project.domain_id"]
}
