package group.update_group_snapshot

import data.lib

# Update group snapshot.
# PUT  /group_snapshots/{group_snapshot_id}
#"group:update_group_snapshot": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

