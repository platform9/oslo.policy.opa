package os_compute_api.os_security_groups.rule.create

import data.lib

# Create security group Rule. This API is deprecated.
# POST  /os-security-group-rules
# Intended scope(s): project
#"os_compute_api:os-security-groups:rule:create": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

