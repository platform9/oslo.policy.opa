package group.group_types.delete

import data.lib

# Delete a group type.
# DELETE  /group_types/{group_type_id}
#"group:group_types:delete": "rule:admin_api"


allow if {
  lib.admin_api
}

