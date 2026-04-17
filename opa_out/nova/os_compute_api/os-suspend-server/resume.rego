package os_compute_api.os_suspend_server.resume

import data.nova_lib

# Resume suspended server
# POST  /servers/{server_id}/action (resume)
# Intended scope(s): project
# "os_compute_api:os-suspend-server:resume": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
