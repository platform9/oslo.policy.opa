package group.delete_group_snapshot

import data.lib

# Delete group snapshot.
# DELETE  /group_snapshots/{group_snapshot_id}
#"group:delete_group_snapshot": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

