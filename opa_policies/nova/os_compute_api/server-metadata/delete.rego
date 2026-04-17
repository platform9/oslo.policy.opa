package os_compute_api.server_metadata.delete

import data.nova_lib

# Delete metadata from a server
# DELETE  /servers/{server_id}/metadata/{key}
# Intended scope(s): project
# "os_compute_api:server-metadata:delete": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
