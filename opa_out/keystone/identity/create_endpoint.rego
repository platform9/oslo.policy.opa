package identity.create_endpoint

import data.lib

# Create endpoint.
# POST  /v3/endpoints
# Intended scope(s): system, project
#"identity:create_endpoint": "rule:admin_required"


allow if {
  lib.admin_required
}

