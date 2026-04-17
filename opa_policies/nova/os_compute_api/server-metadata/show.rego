package os_compute_api.server_metadata.show

import data.nova_lib

# Show metadata for a server
# GET  /servers/{server_id}/metadata/{key}
# Intended scope(s): project
# "os_compute_api:server-metadata:show": "rule:project_reader_or_admin"

allow if {
	nova_lib.project_reader_or_admin
}
