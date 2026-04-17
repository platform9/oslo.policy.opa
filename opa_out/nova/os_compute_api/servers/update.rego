package os_compute_api.servers.update

import data.nova_lib

# Update a server
# PUT  /servers/{server_id}
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:update": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
