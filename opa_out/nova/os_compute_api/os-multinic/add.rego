package os_compute_api.os_multinic.add

import data.lib

# Add a fixed IP address to a server.
#
# This API is proxy calls to the Network service. This is deprecated.
# POST  /servers/{server_id}/action (addFixedIp)
# Intended scope(s): project
#"os_compute_api:os-multinic:add": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

