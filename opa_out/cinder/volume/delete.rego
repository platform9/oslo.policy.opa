package volume.delete

import data.lib

# Delete volume.
# DELETE  /volumes/{volume_id}
#"volume:delete": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

