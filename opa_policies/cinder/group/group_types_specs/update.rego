package group.group_types_specs.update

import data.cinder_lib

# Update a group type spec.
# PUT  /group_types/{group_type_id}/group_specs/{g_spec_id}
# Target attrs: domain_id, project_id, user_id
# "group:group_types_specs:update": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
