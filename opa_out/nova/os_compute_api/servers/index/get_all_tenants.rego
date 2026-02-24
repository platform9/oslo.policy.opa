package os_compute_api.servers.index.get_all_tenants

import data.lib

# List all servers for all projects
# GET  /servers
# Intended scope(s): project
#"os_compute_api:servers:index:get_all_tenants": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

