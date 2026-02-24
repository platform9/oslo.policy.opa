package group.create_group_snapshot

import data.lib

# Create group snapshot.
# POST  /group_snapshots
#"group:create_group_snapshot": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

