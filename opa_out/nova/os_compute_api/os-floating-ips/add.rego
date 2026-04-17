package os_compute_api.os_floating_ips.add

import data.nova_lib

# Associate floating IPs to server.  This API is deprecated.
# POST  /servers/{server_id}/action (addFloatingIp)
# Intended scope(s): project
# "os_compute_api:os-floating-ips:add": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
