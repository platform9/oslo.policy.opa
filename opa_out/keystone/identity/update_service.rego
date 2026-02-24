package identity.update_service

import data.lib

# Update service.
# PATCH  /v3/services/{service_id}
# Intended scope(s): system, project
#"identity:update_service": "rule:admin_required"


allow if {
  lib.admin_required
}

