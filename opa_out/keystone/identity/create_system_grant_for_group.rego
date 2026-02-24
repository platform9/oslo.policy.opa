package identity.create_system_grant_for_group

import data.lib

# Grant a group a role on the system.
# ['PUT']  /v3/system/groups/{group_id}/roles/{role_id}
# Intended scope(s): system, project
#"identity:create_system_grant_for_group": "rule:admin_required"


allow if {
  lib.admin_required
}

