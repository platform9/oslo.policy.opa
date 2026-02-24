package identity.create_role

import data.lib

# Create role.
# POST  /v3/roles
# Intended scope(s): system, project
#"identity:create_role": "rule:admin_required"


allow if {
  lib.admin_required
}

