package backup.backup_import

import data.lib

# Import backup.
# POST  /backups/{backup_id}/import_record
#"backup:backup-import": "rule:admin_api"


allow if {
  lib.admin_api
}

