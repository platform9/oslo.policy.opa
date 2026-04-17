package os_compute_api.os_server_groups.create

import data.nova_lib

# Create a new server group
# POST  /os-server-groups
# Intended scope(s): project
# "os_compute_api:os-server-groups:create": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
