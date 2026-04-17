package os_compute_api.server_metadata.create

import data.nova_lib

# Create metadata for a server
# POST  /servers/{server_id}/metadata
# Intended scope(s): project
# "os_compute_api:server-metadata:create": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
