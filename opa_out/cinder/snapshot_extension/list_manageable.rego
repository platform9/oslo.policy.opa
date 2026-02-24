package snapshot_extension.list_manageable

import data.lib

# List (in detail) of snapshots which are available to manage.
# GET  /manageable_snapshots
# GET  /manageable_snapshots/detail
#"snapshot_extension:list_manageable": "rule:admin_api"


allow if {
  lib.admin_api
}

