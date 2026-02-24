package group.disable_replication

import data.lib

# Disable replication.
# POST  /groups/{group_id}/action (disable_replication)
#"group:disable_replication": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

