package volume.create_snapshot

import data.lib

# Create snapshot.
# POST  /snapshots
#"volume:create_snapshot": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

