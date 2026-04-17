package group.get

import data.cinder_lib

# Show group.
# GET  /groups/{group_id}
# Target attrs: domain_id, project_id, user_id
# "group:get": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
