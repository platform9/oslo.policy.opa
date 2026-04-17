package get_member

import data.glance_lib

# Show image member details
# GET  /v2/images/{image_id}/members/{member}
# Intended scope(s): project
# "get_member": "rule:context_is_admin or role:reader and (project_id:%(project_id)s or project_id:%(member)s)"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	reader_and_creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member
}

# (project_id:%(project_id)s or project_id:%(member)s)
creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member if {
	# project_id:%(project_id)s
	input.credentials.project_id == input.target.project_id
	glance_lib.same_domain
}

# (project_id:%(project_id)s or project_id:%(member)s)
creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member if {
	# project_id:%(member)s
	input.credentials.project_id == input.target.member
}

# (role:reader and (project_id:%(project_id)s or project_id:%(member)s))
reader_and_creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member if {
	"reader" in input.credentials.roles
	creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member
}
