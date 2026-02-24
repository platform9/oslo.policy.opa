package backup.backup_project_attribute

import data.lib

# List backups or show backup with project attributes.
# GET  /backups/{backup_id}
# GET  /backups/detail
#"backup:backup_project_attribute": "rule:admin_api"


allow if {
  lib.admin_api
}

