package identity.get_project_tag

import data.keystone_lib

# Check if project contains a tag.
# GET  /v3/projects/{project_id}/tags/{value}
# HEAD  /v3/projects/{project_id}/tags/{value}
# Intended scope(s): system, domain, project
# "identity:get_project_tag": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.project.domain_id)s) or project_id:%(target.project.id)s"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all
}

allow if {
	reader_and_creds_domain_id_eq_input_target_project_domain_id
}

allow if {
	# project_id:%(target.project.id)s
	input.credentials.project_id == input.target["target.project.id"]
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# (role:reader and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_project_domain_id if {
	"reader" in input.credentials.roles
	input.credentials.domain_id == input.target["target.project.domain_id"]
}
