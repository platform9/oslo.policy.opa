package group.group_snapshot_project_attribute

import data.lib

# List group snapshots or show group snapshot with project attributes.
# GET  /group_snapshots/{group_snapshot_id}
# GET  /group_snapshots/detail
#"group:group_snapshot_project_attribute": "rule:admin_api"


allow if {
  lib.admin_api
}

