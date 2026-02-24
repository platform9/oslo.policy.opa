package group.get_all

import data.lib

# List groups.
# GET  /groups
# GET  /groups/detail
#"group:get_all": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

