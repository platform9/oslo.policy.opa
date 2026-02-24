package volume.get_snapshot_metadata

import data.lib

# Show snapshot's metadata or one specified metadata with a given key.
# GET  /snapshots/{snapshot_id}/metadata
# GET  /snapshots/{snapshot_id}/metadata/{key}
#"volume:get_snapshot_metadata": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

