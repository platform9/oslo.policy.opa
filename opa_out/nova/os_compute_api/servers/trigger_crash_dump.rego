package os_compute_api.servers.trigger_crash_dump

import data.nova_lib

# Trigger crash dump in a server
# POST  /servers/{server_id}/action (trigger_crash_dump)
# Intended scope(s): project
# Target attrs: availability_zone, domain_id, project_id, user_id
# "os_compute_api:servers:trigger_crash_dump": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
