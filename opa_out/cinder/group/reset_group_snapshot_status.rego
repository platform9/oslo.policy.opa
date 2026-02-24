package group.reset_group_snapshot_status

import data.lib

# Reset status of group snapshot.
# POST  /group_snapshots/{g_snapshot_id}/action (reset_status)
#"group:reset_group_snapshot_status": "rule:admin_api"


allow if {
  lib.admin_api
}

