package os_compute_api.os_migrate_server.migrate.host

import data.lib

# Cold migrate a server to a specified host
# POST  /servers/{server_id}/action (migrate)
# Intended scope(s): project
#"os_compute_api:os-migrate-server:migrate:host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

