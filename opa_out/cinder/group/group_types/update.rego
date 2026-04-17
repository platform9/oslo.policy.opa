package group.group_types.update

import data.cinder_lib

# Update a group type.
# PUT  /group_types/{group_type_id}
# Target attrs: domain_id, project_id, user_id
# "group:group_types:update": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
