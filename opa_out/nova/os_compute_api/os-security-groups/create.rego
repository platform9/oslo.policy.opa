package os_compute_api.os_security_groups.create

import data.lib

# Create security group. This API is deprecated.
# POST  /os-security-groups
# Intended scope(s): project
#"os_compute_api:os-security-groups:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

