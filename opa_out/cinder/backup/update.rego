package backup.update

import data.lib

# Update backup.
# PUT  /backups/{backup_id}
#"backup:update": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

