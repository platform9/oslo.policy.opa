package os_compute_api.servers.migrations.index

import data.lib

# Lists in-progress live migrations for a given server without host
# info.
# GET  /servers/{server_id}/migrations
# Intended scope(s): project
#"os_compute_api:servers:migrations:index": "rule:project_manager_or_admin"


allow if {
  lib.project_manager_or_admin
}

