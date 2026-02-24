package volume.revert_to_snapshot

import data.lib

# Revert a volume to a snapshot.
# POST  /volumes/{volume_id}/action (revert)
#"volume:revert_to_snapshot": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

