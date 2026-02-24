package os_compute_api.os_server_tags.index

import data.lib

# List all tags for given server
# GET  /servers/{server_id}/tags
# Intended scope(s): project
#"os_compute_api:os-server-tags:index": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

