package backup.delete

import data.lib

# Delete backup.
# DELETE  /backups/{backup_id}
#"backup:delete": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

