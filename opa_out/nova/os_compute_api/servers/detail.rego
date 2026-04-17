package os_compute_api.servers.detail

import data.nova_lib

# List all servers with detailed information
# GET  /servers/detail
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:detail": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
