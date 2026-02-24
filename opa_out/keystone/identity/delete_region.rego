package identity.delete_region

import data.lib

# Delete region.
# DELETE  /v3/regions/{region_id}
# Intended scope(s): system, project
#"identity:delete_region": "rule:admin_required"


allow if {
  lib.admin_required
}

