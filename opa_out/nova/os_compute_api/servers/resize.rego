package os_compute_api.servers.resize

import data.lib

# Resize a server
# POST  /servers/{server_id}/action (resize)
# Intended scope(s): project
#"os_compute_api:servers:resize": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

