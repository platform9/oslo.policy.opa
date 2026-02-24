package os_compute_api.os_migrate_server.migrate

import data.lib

# Cold migrate a server without specifying a host
# POST  /servers/{server_id}/action (migrate)
# Intended scope(s): project
#"os_compute_api:os-migrate-server:migrate": "rule:project_manager_or_admin"


allow if {
  lib.project_manager_or_admin
}

