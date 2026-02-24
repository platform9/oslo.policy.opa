package os_compute_api.os_lock_server.unlock.unlock_override

import data.lib

# Unlock a server, regardless who locked the server.
#
# This check is performed only after the check os_compute_api:os-lock-
# server:unlock passes
# POST  /servers/{server_id}/action (unlock)
# Intended scope(s): project
#"os_compute_api:os-lock-server:unlock:unlock_override": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

