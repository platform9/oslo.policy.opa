package os_compute_api.os_admin_actions.reset_state

import data.lib

# Reset the state of a given server
# POST  /servers/{server_id}/action (os-resetState)
# Intended scope(s): project
#"os_compute_api:os-admin-actions:reset_state": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

