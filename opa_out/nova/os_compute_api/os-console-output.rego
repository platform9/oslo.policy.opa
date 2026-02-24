package os_compute_api.os_console_output

import data.lib

# Show console output for a server
# POST  /servers/{server_id}/action (os-getConsoleOutput)
# Intended scope(s): project
#"os_compute_api:os-console-output": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

