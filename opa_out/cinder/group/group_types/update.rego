package group.group_types.update

import data.lib

# Update a group type.
# PUT  /group_types/{group_type_id}
#"group:group_types:update": "rule:admin_api"


allow if {
  lib.admin_api
}

