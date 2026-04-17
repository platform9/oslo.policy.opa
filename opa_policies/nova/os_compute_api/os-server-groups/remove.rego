package os_compute_api.os_server_groups.remove

import data.nova_lib

# Remove instances from server group.
# POST  /servers/{server_id}/action (removeFromServerGroup)
# Intended scope(s): project
# "os_compute_api:os-server-groups:remove": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
