package identity.update_domain

import data.lib

# Update domain.
# PATCH  /v3/domains/{domain_id}
# Intended scope(s): system, project
#"identity:update_domain": "rule:admin_required"


allow if {
  lib.admin_required
}

