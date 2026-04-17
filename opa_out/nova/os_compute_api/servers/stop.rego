package os_compute_api.servers.stop

import data.nova_lib

# Stop a server
# POST  /servers/{server_id}/action (os-stop)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:stop": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
