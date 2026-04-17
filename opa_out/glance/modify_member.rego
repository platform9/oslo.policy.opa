package modify_member

import data.glance_lib

# Update image member
# PUT  /v2/images/{image_id}/members/{member}
# Intended scope(s): project
# "modify_member": "rule:context_is_admin or (role:member and project_id:%(member)s)"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	member_and_creds_project_id_eq_input_member
}

# (role:member and project_id:%(member)s)
member_and_creds_project_id_eq_input_member if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.member
}
