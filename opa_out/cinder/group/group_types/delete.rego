package group.group_types.delete

import data.cinder_lib

# Delete a group type.
# DELETE  /group_types/{group_type_id}
# Target attrs: domain_id, project_id, user_id
# "group:group_types:delete": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
