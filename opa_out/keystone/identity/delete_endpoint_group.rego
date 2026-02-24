package identity.delete_endpoint_group

import data.lib

# Delete endpoint group.
# DELETE  /v3/OS-EP-FILTER/endpoint_groups/{endpoint_group_id}
# Intended scope(s): system, project
#"identity:delete_endpoint_group": "rule:admin_required"


allow if {
  lib.admin_required
}

