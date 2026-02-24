package os_compute_api.servers.migrations.index.host

import data.lib

# Lists in-progress live migrations for a given server with host info.
# GET  /servers/{server_id}/migrations
# Intended scope(s): project
#"os_compute_api:servers:migrations:index:host": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

