package identity.create_domain

import data.lib

# Create domain.
# POST  /v3/domains
# Intended scope(s): system, project
#"identity:create_domain": "rule:admin_required"


allow if {
  lib.admin_required
}

