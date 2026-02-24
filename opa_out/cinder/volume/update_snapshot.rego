package volume.update_snapshot

import data.lib

# Update snapshot.
# PUT  /snapshots/{snapshot_id}
#"volume:update_snapshot": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

