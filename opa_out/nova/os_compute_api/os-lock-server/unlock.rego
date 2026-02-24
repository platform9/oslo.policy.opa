package os_compute_api.os_lock_server.unlock

import data.lib

# Unlock a server
# POST  /servers/{server_id}/action (unlock)
# Intended scope(s): project
#"os_compute_api:os-lock-server:unlock": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

