package group.create

import data.lib

# Create group.
# POST  /groups
#"group:create": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

