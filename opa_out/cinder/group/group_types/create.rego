package group.group_types.create

import data.cinder_lib

# Create a group type.
# POST  /group_types/
# Target attrs: domain_id, project_id, user_id
# "group:group_types:create": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
