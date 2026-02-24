package os_compute_api.os_migrate_server.migrate_live

import data.lib

# Live migrate a server to a new host without a reboot without
# specifying a host.
# POST  /servers/{server_id}/action (os-migrateLive)
# Intended scope(s): project
#"os_compute_api:os-migrate-server:migrate_live": "rule:project_manager_or_admin"


allow if {
  lib.project_manager_or_admin
}

