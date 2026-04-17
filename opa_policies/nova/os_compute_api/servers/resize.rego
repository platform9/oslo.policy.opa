package os_compute_api.servers.resize

import data.nova_lib

# Resize a server
# POST  /servers/{server_id}/action (resize)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:resize": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
