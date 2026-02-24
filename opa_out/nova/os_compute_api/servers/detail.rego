package os_compute_api.servers.detail

import data.lib

# List all servers with detailed information
# GET  /servers/detail
# Intended scope(s): project
#"os_compute_api:servers:detail": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

