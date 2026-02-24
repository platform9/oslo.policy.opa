package os_compute_api.os_attach_interfaces.create

import data.lib

# Attach an interface to a server
# POST  /servers/{server_id}/os-interface
# Intended scope(s): project
#"os_compute_api:os-attach-interfaces:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

