package identity.delete_domain

import data.lib

# Delete domain.
# DELETE  /v3/domains/{domain_id}
# Intended scope(s): system, project
#"identity:delete_domain": "rule:admin_required"


allow if {
  lib.admin_required
}

