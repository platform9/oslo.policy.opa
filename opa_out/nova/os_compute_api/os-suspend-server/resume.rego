package os_compute_api.os_suspend_server.resume

import data.lib

# Resume suspended server
# POST  /servers/{server_id}/action (resume)
# Intended scope(s): project
#"os_compute_api:os-suspend-server:resume": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

