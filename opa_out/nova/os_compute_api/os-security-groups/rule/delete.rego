package os_compute_api.os_security_groups.rule.delete

import data.lib

# Delete security group Rule. This API is deprecated.
# DELETE  /os-security-group-rules/{security_group_id}
# Intended scope(s): project
#"os_compute_api:os-security-groups:rule:delete": "rule:project_member_or_admin"


allow if {
  lib.project_member_or_admin
}

