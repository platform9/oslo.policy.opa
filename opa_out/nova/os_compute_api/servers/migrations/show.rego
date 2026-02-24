package os_compute_api.servers.migrations.show

import data.lib

# Show details for an in-progress live migration for a given server
# GET  /servers/{server_id}/migrations/{migration_id}
# Intended scope(s): project
#"os_compute_api:servers:migrations:show": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

