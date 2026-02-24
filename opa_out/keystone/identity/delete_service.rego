package identity.delete_service

import data.lib

# Delete service.
# DELETE  /v3/services/{service_id}
# Intended scope(s): system, project
#"identity:delete_service": "rule:admin_required"


allow if {
  lib.admin_required
}

