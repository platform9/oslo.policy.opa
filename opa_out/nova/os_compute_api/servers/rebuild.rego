package os_compute_api.servers.rebuild

import data.lib

# Rebuild a server
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
#"os_compute_api:servers:rebuild": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

