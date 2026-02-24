package volume.delete_snapshot

import data.lib

# Delete snapshot.
# DELETE  /snapshots/{snapshot_id}
#"volume:delete_snapshot": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

