package group.group_project_attribute

import data.lib

# List groups or show group with project attributes.
# GET  /groups/{group_id}
# GET  /groups/detail
#"group:group_project_attribute": "rule:admin_api"


allow if {
  lib.admin_api
}

