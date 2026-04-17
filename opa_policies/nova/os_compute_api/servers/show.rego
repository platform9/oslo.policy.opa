package os_compute_api.servers.show

import data.nova_lib

# Show a server
# GET  /servers/{server_id}
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:show": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
