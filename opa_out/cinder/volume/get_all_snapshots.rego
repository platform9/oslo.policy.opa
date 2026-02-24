package volume.get_all_snapshots

import data.lib

# List snapshots.
# GET  /snapshots
# GET  /snapshots/detail
#"volume:get_all_snapshots": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

