package group.access_group_types_specs

import data.lib

# Show group type with type specs attributes.
# GET  /group_types/{group_type_id}
#"group:access_group_types_specs": "rule:admin_api"


allow if {
  lib.admin_api
}

