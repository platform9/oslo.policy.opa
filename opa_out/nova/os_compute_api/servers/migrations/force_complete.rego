package os_compute_api.servers.migrations.force_complete

import data.lib

# Force an in-progress live migration for a given server to complete
# POST  /servers/{server_id}/migrations/{migration_id}/action (force_complete)
# Intended scope(s): project
#"os_compute_api:servers:migrations:force_complete": "rule:project_manager_or_admin"


allow if {
  lib.project_manager_or_admin
}

