package os_compute_api.servers.create.trusted_certs

import data.lib

# Create a server with trusted image certificate IDs
# POST  /servers
# Intended scope(s): project
#"os_compute_api:servers:create:trusted_certs": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

