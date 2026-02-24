package group.get_group_snapshot

import data.lib

# Show group snapshot.
# GET  /group_snapshots/{group_snapshot_id}
#"group:get_group_snapshot": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

