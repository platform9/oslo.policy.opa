package group.create

import data.cinder_lib

# Create group.
# POST  /groups
# Target attrs: domain_id, project_id, user_id
# "group:create": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
