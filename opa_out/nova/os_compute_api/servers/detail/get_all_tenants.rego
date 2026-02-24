package os_compute_api.servers.detail.get_all_tenants

import data.lib

# List all servers with detailed information for  all projects
# GET  /servers/detail
# Intended scope(s): project
#"os_compute_api:servers:detail:get_all_tenants": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

