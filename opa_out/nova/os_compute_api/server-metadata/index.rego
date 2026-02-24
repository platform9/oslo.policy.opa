package os_compute_api.server_metadata.index

import data.lib

# List all metadata of a server
# GET  /servers/{server_id}/metadata
# Intended scope(s): project
#"os_compute_api:server-metadata:index": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

