package identity.create_service

import data.lib

# Create service.
# POST  /v3/services
# Intended scope(s): system, project
#"identity:create_service": "rule:admin_required"


allow if {
  lib.admin_required
}

