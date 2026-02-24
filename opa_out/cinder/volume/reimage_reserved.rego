package volume.reimage_reserved

import data.lib

# Reimage a volume in 'reserved' status.
# POST  /volumes/{volume_id}/action (os-reimage)
#"volume:reimage_reserved": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

