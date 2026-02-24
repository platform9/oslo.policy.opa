package volume_extension.backup_admin_actions.reset_status

import data.lib

# Reset status of a backup.
# POST  /backups/{backup_id}/action (os-reset_status)
#"volume_extension:backup_admin_actions:reset_status": "rule:admin_api"


allow if {
  lib.admin_api
}

