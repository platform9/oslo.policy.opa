package identity.create_limits

import data.lib

# Create limits.
# POST  /v3/limits
# Intended scope(s): system, project
#"identity:create_limits": "rule:admin_required"


allow if {
  lib.admin_required
}

