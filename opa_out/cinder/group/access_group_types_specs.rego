package group.access_group_types_specs

import data.cinder_lib

# Show group type with type specs attributes.
# GET  /group_types/{group_type_id}
# Target attrs: domain_id, project_id, user_id
# "group:access_group_types_specs": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
