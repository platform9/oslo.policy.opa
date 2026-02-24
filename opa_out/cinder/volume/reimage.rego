package volume.reimage

import data.lib

# Reimage a volume in 'available' or 'error' status.
# POST  /volumes/{volume_id}/action (os-reimage)
#"volume:reimage": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

