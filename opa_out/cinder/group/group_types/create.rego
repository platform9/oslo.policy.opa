package group.group_types.create

import data.lib

# Create a group type.
# POST  /group_types/
#"group:group_types:create": "rule:admin_api"


allow if {
  lib.admin_api
}

