package identity.update_endpoint_group

import data.lib

# Update endpoint group.
# PATCH  /v3/OS-EP-FILTER/endpoint_groups/{endpoint_group_id}
# Intended scope(s): system, project
#"identity:update_endpoint_group": "rule:admin_required"


allow if {
  lib.admin_required
}

