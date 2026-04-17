package add_image

import data.glance_lib

# Create new image
# POST  /v2/images
# Intended scope(s): project
# Target attrs: domain_id, owner, project_id, visibility
# "add_image": "rule:context_is_admin or (role:member and project_id:%(project_id)s and project_id:%(owner)s)"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	member_and_creds_project_id_eq_input_project_id_and_creds_project_id_eq_input_owner
}

# (role:member and project_id:%(project_id)s and project_id:%(owner)s)
member_and_creds_project_id_eq_input_project_id_and_creds_project_id_eq_input_owner if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	input.credentials.project_id == input.target.owner
	glance_lib.same_domain
}
