package os_compute_api.servers.rebuild.trusted_certs

import data.lib

# Rebuild a server with trusted image certificate IDs
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
#"os_compute_api:servers:rebuild:trusted_certs": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

