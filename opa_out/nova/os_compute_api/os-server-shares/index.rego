package os_compute_api.os_server_shares.index

import data.lib

# List all shares for given server
# GET  /servers/{server_id}/shares
# Intended scope(s): project
#"os_compute_api:os-server-shares:index": "rule:project_reader_api"


allow if {
  lib.project_reader_api
}

