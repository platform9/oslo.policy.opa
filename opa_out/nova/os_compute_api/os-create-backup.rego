package os_compute_api.os_create_backup

import data.lib

# Create a back up of a server
# POST  /servers/{server_id}/action (createBackup)
# Intended scope(s): project
#"os_compute_api:os-create-backup": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

