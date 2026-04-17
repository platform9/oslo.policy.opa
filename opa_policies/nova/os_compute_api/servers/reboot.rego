package os_compute_api.servers.reboot

import data.nova_lib

# Reboot a server
# POST  /servers/{server_id}/action (reboot)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:reboot": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
