package group.failover_replication

import data.lib

# Fail over replication.
# POST  /groups/{group_id}/action (failover_replication)
#"group:failover_replication": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

