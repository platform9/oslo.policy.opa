package os_compute_api.servers.revert_resize

import data.nova_lib

# Revert a server resize
# POST  /servers/{server_id}/action (revertResize)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:revert_resize": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
