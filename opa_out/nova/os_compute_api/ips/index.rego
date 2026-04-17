package os_compute_api.ips.index

import data.nova_lib

# List IP addresses that are assigned to a server
# GET  /servers/{server_id}/ips
# Intended scope(s): project
# "os_compute_api:ips:index": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
