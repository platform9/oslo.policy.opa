package os_compute_api.servers.stop

import data.lib

# Stop a server
# POST  /servers/{server_id}/action (os-stop)
# Intended scope(s): project
#"os_compute_api:servers:stop": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

