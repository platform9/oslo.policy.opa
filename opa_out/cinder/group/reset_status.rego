package group.reset_status

import data.lib

# Reset status of group.
# POST  /groups/{group_id}/action (reset_status)
#"group:reset_status": "rule:admin_api"


allow if {
  lib.admin_api
}

