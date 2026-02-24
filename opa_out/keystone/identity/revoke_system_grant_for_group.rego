package identity.revoke_system_grant_for_group

import data.lib

# Remove a role from a group on the system.
# ['DELETE']  /v3/system/groups/{group_id}/roles/{role_id}
# Intended scope(s): system, project
#"identity:revoke_system_grant_for_group": "rule:admin_required"


allow if {
  lib.admin_required
}

