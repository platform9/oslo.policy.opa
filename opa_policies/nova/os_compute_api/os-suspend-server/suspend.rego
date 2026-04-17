package os_compute_api.os_suspend_server.suspend

import data.nova_lib

# Suspend server
# POST  /servers/{server_id}/action (suspend)
# Intended scope(s): project
# "os_compute_api:os-suspend-server:suspend": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
