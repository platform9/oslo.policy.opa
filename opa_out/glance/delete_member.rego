package delete_member

import data.glance_lib

# Delete image member
# DELETE  /v2/images/{image_id}/members/{member}
# Intended scope(s): project
# "delete_member": "rule:context_is_admin or (role:member and project_id:%(project_id)s)"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	glance_lib.same_domain
}
