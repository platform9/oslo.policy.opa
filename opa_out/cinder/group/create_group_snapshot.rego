package group.create_group_snapshot

import data.cinder_lib

# Create group snapshot.
# POST  /group_snapshots
# Target attrs: domain_id, project_id, user_id
# "group:create_group_snapshot": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
