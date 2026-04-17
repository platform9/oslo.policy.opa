package group.group_types_specs.get

import data.cinder_lib

# Show a group type spec.
# GET  /group_types/{group_type_id}/group_specs/{g_spec_id}
# Target attrs: domain_id, project_id, user_id
# "group:group_types_specs:get": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
