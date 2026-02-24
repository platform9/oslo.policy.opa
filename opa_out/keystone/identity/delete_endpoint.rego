package identity.delete_endpoint

import data.lib

# Delete endpoint.
# DELETE  /v3/endpoints/{endpoint_id}
# Intended scope(s): system, project
#"identity:delete_endpoint": "rule:admin_required"


allow if {
  lib.admin_required
}

