package os_compute_api.os_server_password.show

import data.lib

# Show the encrypted administrative password of a server
# GET  /servers/{server_id}/os-server-password
# Intended scope(s): project
#"os_compute_api:os-server-password:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

