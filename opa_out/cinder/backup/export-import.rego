package backup.export_import

import data.lib

# Export backup.
# POST  /backups/{backup_id}/export_record
#"backup:export-import": "rule:admin_api"


allow if {
  lib.admin_api
}

