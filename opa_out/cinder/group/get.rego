package group.get

import data.lib

# Show group.
# GET  /groups/{group_id}
#"group:get": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

