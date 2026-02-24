package snapshot_extension.snapshot_actions.update_snapshot_status

import data.lib

# Update database fields of snapshot.
# POST  /snapshots/{snapshot_id}/action (update_snapshot_status)
#"snapshot_extension:snapshot_actions:update_snapshot_status": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

