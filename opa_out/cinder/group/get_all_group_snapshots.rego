package group.get_all_group_snapshots

import data.lib

# List group snapshots.
# GET  /group_snapshots
# GET  /group_snapshots/detail
#"group:get_all_group_snapshots": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

