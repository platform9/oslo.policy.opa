package volume.delete_snapshot_metadata

import data.lib

# Delete snapshot's specified metadata with a given key.
# DELETE  /snapshots/{snapshot_id}/metadata/{key}
#"volume:delete_snapshot_metadata": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

