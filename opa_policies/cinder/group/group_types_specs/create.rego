package group.group_types_specs.create

import data.cinder_lib

# Create a group type spec.
# POST  /group_types/{group_type_id}/group_specs
# Target attrs: domain_id, project_id, user_id
# "group:group_types_specs:create": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
