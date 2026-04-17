package os_compute_api.ips.show

import data.nova_lib

# Show IP addresses details for a network label of a  server
# GET  /servers/{server_id}/ips/{network_label}
# Intended scope(s): project
# "os_compute_api:ips:show": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
