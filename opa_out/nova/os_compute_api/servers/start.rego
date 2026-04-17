package os_compute_api.servers.start

import data.nova_lib

# Start a server
# POST  /servers/{server_id}/action (os-start)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:start": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
