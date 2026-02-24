package os_compute_api.servers.create

import data.lib

# Create a server
# POST  /servers
# Intended scope(s): project
#"os_compute_api:servers:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

