package os_compute_api.os_server_shares.delete

import data.lib

# Detach a share to the specified server
# DELETE  /servers/{server_id}/shares/{share_id}
# Intended scope(s): project
#"os_compute_api:os-server-shares:delete": "rule:project_member_api"


allow if {
  lib.project_member_api
}

