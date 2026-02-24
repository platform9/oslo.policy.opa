package os_compute_api.servers.trigger_crash_dump

import data.lib

# Trigger crash dump in a server
# POST  /servers/{server_id}/action (trigger_crash_dump)
# Intended scope(s): project
#"os_compute_api:servers:trigger_crash_dump": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

