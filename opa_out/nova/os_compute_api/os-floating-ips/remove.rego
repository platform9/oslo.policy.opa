package os_compute_api.os_floating_ips.remove

import data.lib

# Disassociate floating IPs to server.  This API is deprecated.
# POST  /servers/{server_id}/action (removeFloatingIp)
# Intended scope(s): project
#"os_compute_api:os-floating-ips:remove": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

