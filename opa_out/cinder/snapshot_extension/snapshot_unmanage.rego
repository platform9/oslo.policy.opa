package snapshot_extension.snapshot_unmanage

import data.lib

# Stop managing a snapshot.
# POST  /snapshots/{snapshot_id}/action (os-unmanage)
#"snapshot_extension:snapshot_unmanage": "rule:admin_api"


allow if {
  lib.admin_api
}

