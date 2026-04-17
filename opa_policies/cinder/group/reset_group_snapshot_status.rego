package group.reset_group_snapshot_status

import data.cinder_lib

# Reset status of group snapshot.
# POST  /group_snapshots/{g_snapshot_id}/action (reset_status)
# Target attrs: domain_id, project_id, user_id
# "group:reset_group_snapshot_status": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
