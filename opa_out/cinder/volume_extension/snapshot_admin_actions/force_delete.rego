package volume_extension.snapshot_admin_actions.force_delete

import data.lib

# Force delete a snapshot.
# POST  /snapshots/{snapshot_id}/action (os-force_delete)
#"volume_extension:snapshot_admin_actions:force_delete": "rule:admin_api"


allow if {
  lib.admin_api
}

