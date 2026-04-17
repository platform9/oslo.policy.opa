package group.reset_status

import data.cinder_lib

# Reset status of group.
# POST  /groups/{group_id}/action (reset_status)
# Target attrs: domain_id, project_id, user_id
# "group:reset_status": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
