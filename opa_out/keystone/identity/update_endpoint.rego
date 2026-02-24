package identity.update_endpoint

import data.lib

# Update endpoint.
# PATCH  /v3/endpoints/{endpoint_id}
# Intended scope(s): system, project
#"identity:update_endpoint": "rule:admin_required"


allow if {
  lib.admin_required
}

