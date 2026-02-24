package os_compute_api.os_rescue

import data.lib

# Rescue a server
# POST  /servers/{server_id}/action (rescue)
# Intended scope(s): project
#"os_compute_api:os-rescue": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

