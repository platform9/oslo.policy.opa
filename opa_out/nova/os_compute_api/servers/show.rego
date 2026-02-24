package os_compute_api.servers.show

import data.lib

# Show a server
# GET  /servers/{server_id}
# Intended scope(s): project
#"os_compute_api:servers:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

