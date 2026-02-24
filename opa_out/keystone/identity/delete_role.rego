package identity.delete_role

import data.lib

# Delete role.
# DELETE  /v3/roles/{role_id}
# Intended scope(s): system, project
#"identity:delete_role": "rule:admin_required"


allow if {
  lib.admin_required
}

