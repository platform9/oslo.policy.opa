package volume.get_snapshot

import data.lib

# Show snapshot.
# GET  /snapshots/{snapshot_id}
#"volume:get_snapshot": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

