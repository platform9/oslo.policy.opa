package group.update_group_snapshot

import data.cinder_lib

# Update group snapshot.
# PUT  /group_snapshots/{group_snapshot_id}
# Target attrs: domain_id, project_id, user_id
# "group:update_group_snapshot": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
