package os_compute_api.os_unrescue

import data.lib

# Unrescue a server
# POST  /servers/{server_id}/action (unrescue)
# Intended scope(s): project
#"os_compute_api:os-unrescue": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

