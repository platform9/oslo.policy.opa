package os_compute_api.servers.delete

import data.nova_lib

# Delete a server
# DELETE  /servers/{server_id}
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:delete": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
