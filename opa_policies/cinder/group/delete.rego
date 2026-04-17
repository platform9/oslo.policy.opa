package group.delete

import data.cinder_lib

# Delete group.
# POST  /groups/{group_id}/action (delete)
# Target attrs: domain_id, project_id, user_id
# "group:delete": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
