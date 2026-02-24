package identity.create_policy

import data.lib

# Create policy.
# POST  /v3/policies
# Intended scope(s): system, project
#"identity:create_policy": "rule:admin_required"


allow if {
  lib.admin_required
}

