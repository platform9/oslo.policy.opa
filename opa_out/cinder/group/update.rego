package group.update

import data.lib

# Update group.
# PUT  /groups/{group_id}
#"group:update": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

