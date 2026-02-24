package os_compute_api.os_attach_interfaces.show

import data.lib

# Show details of a port interface attached to a server
# GET  /servers/{server_id}/os-interface/{port_id}
# Intended scope(s): project
#"os_compute_api:os-attach-interfaces:show": "rule:project_reader_or_admin"


allow if {
  lib.project_reader_or_admin
}

