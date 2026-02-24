package os_compute_api.os_multinic.remove

import data.lib

# Remove a fixed IP address from a server.
#
# This API is proxy calls to the Network service. This is deprecated.
# POST  /servers/{server_id}/action (removeFixedIp)
# Intended scope(s): project
#"os_compute_api:os-multinic:remove": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

