package os_compute_api.os_attach_interfaces.delete

import data.lib

# Detach an interface from a server
# DELETE  /servers/{server_id}/os-interface/{port_id}
# Intended scope(s): project
#"os_compute_api:os-attach-interfaces:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

