package os_compute_api.servers.delete

import data.lib

# Delete a server
# DELETE  /servers/{server_id}
# Intended scope(s): project
#"os_compute_api:servers:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

