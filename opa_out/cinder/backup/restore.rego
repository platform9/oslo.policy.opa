package backup.restore

import data.lib

# Restore backup.
# POST  /backups/{backup_id}/restore
#"backup:restore": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

