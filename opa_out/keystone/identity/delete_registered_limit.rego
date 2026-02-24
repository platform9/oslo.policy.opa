package identity.delete_registered_limit

import data.lib

# Delete registered limit.
# DELETE  /v3/registered_limits/{registered_limit_id}
# Intended scope(s): system, project
#"identity:delete_registered_limit": "rule:admin_required"


allow if {
  lib.admin_required
}

