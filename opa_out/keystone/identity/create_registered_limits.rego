package identity.create_registered_limits

import data.lib

# Create registered limits.
# POST  /v3/registered_limits
# Intended scope(s): system, project
#"identity:create_registered_limits": "rule:admin_required"


allow if {
  lib.admin_required
}

