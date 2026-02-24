package volume.update_snapshot_metadata

import data.lib

# Update snapshot's metadata or one specified metadata with a given
# key.
# POST  /snapshots/{snapshot_id}/metadata
# PUT  /snapshots/{snapshot_id}/metadata/{key}
#"volume:update_snapshot_metadata": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

