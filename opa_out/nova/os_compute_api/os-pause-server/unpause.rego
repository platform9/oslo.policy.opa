package os_compute_api.os_pause_server.unpause

import data.lib

# Unpause a paused server
# POST  /servers/{server_id}/action (unpause)
# Intended scope(s): project
#"os_compute_api:os-pause-server:unpause": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

