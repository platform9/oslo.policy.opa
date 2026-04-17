package os_compute_api.servers.change_owner

import data.nova_lib

# Update the server's user
# POST  /servers/{server_id}/action (changeOwner)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:change_owner": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
