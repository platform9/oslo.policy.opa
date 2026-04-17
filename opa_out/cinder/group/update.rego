package group.update

import data.cinder_lib

# Update group.
# PUT  /groups/{group_id}
# Target attrs: domain_id, project_id, user_id
# "group:update": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
