package group.group_project_attribute

import data.cinder_lib

# List groups or show group with project attributes.
# GET  /groups/{group_id}
# GET  /groups/detail
# Target attrs: domain_id, project_id, user_id
# "group:group_project_attribute": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
