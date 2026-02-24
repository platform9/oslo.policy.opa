package os_compute_api.os_security_groups.delete

import data.lib

# Delete security group. This API is deprecated.
# DELETE  /os-security-groups/{security_group_id}
# Intended scope(s): project
#"os_compute_api:os-security-groups:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

