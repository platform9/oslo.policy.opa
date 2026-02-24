package identity.create_system_grant_for_user

import data.lib

# Grant a user a role on the system.
# ['PUT']  /v3/system/users/{user_id}/roles/{role_id}
# Intended scope(s): system, project
#"identity:create_system_grant_for_user": "rule:admin_required"


allow if {
  lib.admin_required
}

