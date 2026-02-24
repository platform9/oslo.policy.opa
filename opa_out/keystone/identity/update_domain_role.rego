package identity.update_domain_role

import data.lib

# Update domain role.
# PATCH  /v3/roles/{role_id}
# Intended scope(s): system, project
#"identity:update_domain_role": "rule:admin_required"


allow if {
  lib.admin_required
}

