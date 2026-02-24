package os_compute_api.os_server_tags.show

import data.lib

# Check tag existence on the server.
# GET  /servers/{server_id}/tags/{tag}
# Intended scope(s): project
#"os_compute_api:os-server-tags:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

