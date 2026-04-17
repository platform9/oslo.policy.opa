package group.group_types_specs.get_all

import data.cinder_lib

# List group type specs.
# GET  /group_types/{group_type_id}/group_specs
# Target attrs: domain_id, project_id, user_id
# "group:group_types_specs:get_all": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
