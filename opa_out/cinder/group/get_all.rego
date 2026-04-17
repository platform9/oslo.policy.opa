package group.get_all

import data.cinder_lib

# List groups.
# GET  /groups
# GET  /groups/detail
# Target attrs: domain_id, project_id, user_id
# "group:get_all": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
