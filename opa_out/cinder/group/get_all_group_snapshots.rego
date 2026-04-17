package group.get_all_group_snapshots

import data.cinder_lib

# List group snapshots.
# GET  /group_snapshots
# GET  /group_snapshots/detail
# Target attrs: domain_id, project_id, user_id
# "group:get_all_group_snapshots": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
