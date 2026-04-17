package os_compute_api.servers.rebuild

import data.nova_lib

# Rebuild a server
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:rebuild": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
