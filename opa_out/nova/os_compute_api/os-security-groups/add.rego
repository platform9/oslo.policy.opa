package os_compute_api.os_security_groups.add

import data.lib

# Add security groups to server.
# POST  /servers/{server_id}/action (addSecurityGroup)
# Intended scope(s): project
#"os_compute_api:os-security-groups:add": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

