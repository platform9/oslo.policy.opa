package volume.update

import data.lib

# Update volume or update a volume's bootable status.
# PUT  /volumes
# POST  /volumes/{volume_id}/action (os-set_bootable)
#"volume:update": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

