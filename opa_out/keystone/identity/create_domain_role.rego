package identity.create_domain_role

import data.lib

# Create domain role.
# POST  /v3/roles
# Intended scope(s): system, project
#"identity:create_domain_role": "rule:admin_required"


allow if {
  lib.admin_required
}

