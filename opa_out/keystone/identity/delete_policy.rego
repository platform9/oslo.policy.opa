package identity.delete_policy

import data.lib

# Delete policy.
# DELETE  /v3/policies/{policy_id}
# Intended scope(s): system, project
#"identity:delete_policy": "rule:admin_required"


allow if {
  lib.admin_required
}

