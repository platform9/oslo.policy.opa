package os_compute_api.servers.create.attach_network

import data.lib

# Create a server with the requested network attached  to it
# POST  /servers
# Intended scope(s): project
#"os_compute_api:servers:create:attach_network": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

