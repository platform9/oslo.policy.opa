package identity.delete_limit

import data.lib

# Delete limit.
# DELETE  /v3/limits/{limit_id}
# Intended scope(s): system, project
#"identity:delete_limit": "rule:admin_required"


allow if {
  lib.admin_required
}

