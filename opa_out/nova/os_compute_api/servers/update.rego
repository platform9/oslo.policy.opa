package os_compute_api.servers.update

import data.lib

# Update a server
# PUT  /servers/{server_id}
# Intended scope(s): project
#"os_compute_api:servers:update": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

