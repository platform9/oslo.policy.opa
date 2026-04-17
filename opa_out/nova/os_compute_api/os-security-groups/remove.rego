package os_compute_api.os_security_groups.remove

import data.nova_lib

# Remove security groups from server.
# POST  /servers/{server_id}/action (removeSecurityGroup)
# Intended scope(s): project
# "os_compute_api:os-security-groups:remove": "rule:project_member_or_admin"

allow if {
	nova_lib.project_member_or_admin
}
