package identity.create_region

import data.lib

# Create region.
# POST  /v3/regions
# PUT  /v3/regions/{region_id}
# Intended scope(s): system, project
#"identity:create_region": "rule:admin_required"


allow if {
  lib.admin_required
}

