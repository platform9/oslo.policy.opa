package os_compute_api.os_pause_server.pause

import data.lib

# Pause a server
# POST  /servers/{server_id}/action (pause)
# Intended scope(s): project
#"os_compute_api:os-pause-server:pause": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

