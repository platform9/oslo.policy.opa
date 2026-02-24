package os_compute_api.servers.migrations.delete

import data.lib

# Delete(Abort) an in-progress live migration
# DELETE  /servers/{server_id}/migrations/{migration_id}
# Intended scope(s): project
#"os_compute_api:servers:migrations:delete": "rule:project_manager_or_admin"


allow if {
  lib.project_manager_or_admin
}

