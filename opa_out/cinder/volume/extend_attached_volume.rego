package volume.extend_attached_volume

import data.lib

# Extend a attached volume.
# POST  /volumes/{volume_id}/action (os-extend)
#"volume:extend_attached_volume": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

