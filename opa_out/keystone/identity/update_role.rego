package identity.update_role

import data.lib

# Update role.
# PATCH  /v3/roles/{role_id}
# Intended scope(s): system, project
#"identity:update_role": "rule:admin_required"


allow if {
  lib.admin_required
}

