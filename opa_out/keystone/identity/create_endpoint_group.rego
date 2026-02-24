package identity.create_endpoint_group

import data.lib

# Create endpoint group.
# POST  /v3/OS-EP-FILTER/endpoint_groups
# Intended scope(s): system, project
#"identity:create_endpoint_group": "rule:admin_required"


allow if {
  lib.admin_required
}

