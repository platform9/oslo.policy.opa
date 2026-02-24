package os_compute_api.os_security_groups.update

import data.lib

# Update security group. This API is deprecated.
# PUT  /os-security-groups/{security_group_id}
# Intended scope(s): project
#"os_compute_api:os-security-groups:update": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

