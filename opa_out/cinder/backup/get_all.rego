package backup.get_all

import data.lib

# List backups.
# GET  /backups
# GET  /backups/detail
#"backup:get_all": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

