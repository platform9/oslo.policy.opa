package os_compute_api.os_lock_server.lock

import data.nova_lib

# Lock a server
# POST  /servers/{server_id}/action (lock)
# Intended scope(s): project
# "os_compute_api:os-lock-server:lock": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
