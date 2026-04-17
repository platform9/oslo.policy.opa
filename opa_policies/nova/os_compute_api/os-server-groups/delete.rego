package os_compute_api.os_server_groups.delete

import data.nova_lib

# Delete a server group
# DELETE  /os-server-groups/{server_group_id}
# Intended scope(s): project
# "os_compute_api:os-server-groups:delete": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
