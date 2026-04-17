package os_compute_api.os_server_groups.index

import data.nova_lib

# List all server groups
# GET  /os-server-groups
# Intended scope(s): project
# "os_compute_api:os-server-groups:index": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
