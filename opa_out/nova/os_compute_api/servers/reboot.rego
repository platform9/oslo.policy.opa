package os_compute_api.servers.reboot

import data.lib

# Reboot a server
# POST  /servers/{server_id}/action (reboot)
# Intended scope(s): project
#"os_compute_api:servers:reboot": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

