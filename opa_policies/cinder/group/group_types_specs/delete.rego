package group.group_types_specs.delete

import data.cinder_lib

# Delete a group type spec.
# DELETE  /group_types/{group_type_id}/group_specs/{g_spec_id}
# Target attrs: domain_id, project_id, user_id
# "group:group_types_specs:delete": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
