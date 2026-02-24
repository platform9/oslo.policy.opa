package os_compute_api.os_server_diagnostics

import data.lib

# Show the usage data for a server
# GET  /servers/{server_id}/diagnostics
# Intended scope(s): project
#"os_compute_api:os-server-diagnostics": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

