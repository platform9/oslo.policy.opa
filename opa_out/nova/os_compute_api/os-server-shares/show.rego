package os_compute_api.os_server_shares.show

import data.lib

# Show a share configured for the specified server
# GET  /servers/{server_id}/shares/{share_id}
# Intended scope(s): project
#"os_compute_api:os-server-shares:show": "rule:project_reader_api"


allow if {
  lib.project_reader_api
}

