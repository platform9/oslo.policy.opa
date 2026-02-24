package identity.create_implied_role

import data.lib

# Create an association between two roles. When a relationship exists
# between a prior role and an implied role and the prior role is
# assigned to a user, the user also assumes the implied role.
# PUT  /v3/roles/{prior_role_id}/implies/{implied_role_id}
# Intended scope(s): system, project
#"identity:create_implied_role": "rule:admin_required"


allow if {
  lib.admin_required
}

