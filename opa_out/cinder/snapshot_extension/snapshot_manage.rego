package snapshot_extension.snapshot_manage

import data.lib

# Manage an existing snapshot.
# POST  /manageable_snapshots
#"snapshot_extension:snapshot_manage": "rule:admin_api"


allow if {
  lib.admin_api
}

