package os_compute_api.servers.revert_resize

import data.lib

# Revert a server resize
# POST  /servers/{server_id}/action (revertResize)
# Intended scope(s): project
#"os_compute_api:servers:revert_resize": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

