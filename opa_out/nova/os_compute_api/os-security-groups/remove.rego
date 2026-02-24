package os_compute_api.os_security_groups.remove

import data.lib

# Remove security groups from server.
# POST  /servers/{server_id}/action (removeSecurityGroup)
# Intended scope(s): project
#"os_compute_api:os-security-groups:remove": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

