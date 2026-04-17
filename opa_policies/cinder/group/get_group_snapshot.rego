package group.get_group_snapshot

import data.cinder_lib

# Show group snapshot.
# GET  /group_snapshots/{group_snapshot_id}
# Target attrs: domain_id, project_id, user_id
# "group:get_group_snapshot": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
