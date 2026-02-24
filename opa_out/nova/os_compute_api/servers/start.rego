package os_compute_api.servers.start

import data.lib

# Start a server
# POST  /servers/{server_id}/action (os-start)
# Intended scope(s): project
#"os_compute_api:servers:start": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

