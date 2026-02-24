package backup.get

import data.lib

# Show backup.
# GET  /backups/{backup_id}
#"backup:get": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

