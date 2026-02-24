package volume_extension.volume_admin_actions.force_delete

import data.lib

# Force delete a volume.
# POST  /volumes/{volume_id}/action (os-force_delete)
#"volume_extension:volume_admin_actions:force_delete": "rule:admin_api"


allow if {
  lib.admin_api
}

