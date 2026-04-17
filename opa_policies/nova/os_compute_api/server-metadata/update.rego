package os_compute_api.server_metadata.update

import data.nova_lib

# Update metadata from a server
# PUT  /servers/{server_id}/metadata/{key}
# Intended scope(s): project
# "os_compute_api:server-metadata:update": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
