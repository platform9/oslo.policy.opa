package group.list_replication_targets

import data.lib

# List failover replication.
# POST  /groups/{group_id}/action (list_replication_targets)
#"group:list_replication_targets": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

