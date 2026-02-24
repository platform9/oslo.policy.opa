package os_compute_api.servers.confirm_resize

import data.lib

# Confirm a server resize
# POST  /servers/{server_id}/action (confirmResize)
# Intended scope(s): project
#"os_compute_api:servers:confirm_resize": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

