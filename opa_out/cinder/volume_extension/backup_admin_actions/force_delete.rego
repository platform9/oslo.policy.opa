package volume_extension.backup_admin_actions.force_delete

import data.lib

# Force delete a backup.
# POST  /backups/{backup_id}/action (os-force_delete)
#"volume_extension:backup_admin_actions:force_delete": "rule:admin_api"


allow if {
  lib.admin_api
}

