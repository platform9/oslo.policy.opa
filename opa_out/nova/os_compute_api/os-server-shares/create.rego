package os_compute_api.os_server_shares.create

import data.lib

# Attach a share to the specified server
# POST  /servers/{server_id}/shares
# Intended scope(s): project
#"os_compute_api:os-server-shares:create": "rule:project_member_api"


allow if {
  lib.project_member_api
}

