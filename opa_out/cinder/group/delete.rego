package group.delete

import data.lib

# Delete group.
# POST  /groups/{group_id}/action (delete)
#"group:delete": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

