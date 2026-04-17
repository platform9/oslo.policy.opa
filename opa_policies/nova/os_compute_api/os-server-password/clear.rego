package os_compute_api.os_server_password.clear

import data.nova_lib

# Clear the encrypted administrative password of a server
# DELETE  /servers/{server_id}/os-server-password
# Intended scope(s): project
# "os_compute_api:os-server-password:clear": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
