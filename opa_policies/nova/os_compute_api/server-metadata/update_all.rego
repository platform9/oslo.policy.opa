package os_compute_api.server_metadata.update_all

import data.nova_lib

# Replace metadata for a server
# PUT  /servers/{server_id}/metadata
# Intended scope(s): project
# "os_compute_api:server-metadata:update_all": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
