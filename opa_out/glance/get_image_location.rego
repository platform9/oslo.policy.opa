package get_image_location

import data.glance_lib

# Reads the location of the image
# GET  /v2/images/{image_id}
# Intended scope(s): project
# "get_image_location": "rule:context_is_admin or (role:reader and project_id:%(project_id)s)"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	glance_lib.same_domain
}
