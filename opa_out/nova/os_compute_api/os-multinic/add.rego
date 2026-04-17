package os_compute_api.os_multinic.add

import data.nova_lib

# Add a fixed IP address to a server.
#
# This API is proxy calls to the Network service. This is deprecated.
# POST  /servers/{server_id}/action (addFixedIp)
# Intended scope(s): project
# "os_compute_api:os-multinic:add": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
