package os_compute_api.os_server_groups.add

import data.nova_lib

# Add instances to server group.
# POST  /servers/{server_id}/action (addToServerGroup)
# Intended scope(s): project
# "os_compute_api:os-server-groups:add": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
