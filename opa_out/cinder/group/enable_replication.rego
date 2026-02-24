package group.enable_replication

import data.lib

# Enable replication.
# POST  /groups/{group_id}/action (enable_replication)
#"group:enable_replication": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

