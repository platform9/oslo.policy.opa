package os_compute_api.os_migrate_server.migrate_live.host

import data.lib

# Live migrate a server to a specified host without a reboot.
# POST  /servers/{server_id}/action (os-migrateLive)
# Intended scope(s): project
#"os_compute_api:os-migrate-server:migrate_live:host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

