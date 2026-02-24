package os_compute_api.servers.create.attach_volume

import data.lib

# Create a server with the requested volume attached to it
# POST  /servers
# Intended scope(s): project
#"os_compute_api:servers:create:attach_volume": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

