package os_compute_api.servers.index

import data.nova_lib

# List all servers
# GET  /servers
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:index": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
