package os_compute_api.servers.index

import data.lib

# List all servers
# GET  /servers
# Intended scope(s): project
#"os_compute_api:servers:index": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

