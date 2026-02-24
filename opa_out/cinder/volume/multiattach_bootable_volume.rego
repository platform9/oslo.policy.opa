package volume.multiattach_bootable_volume

import data.lib

# Allow multiattach of bootable volumes.
# POST  /attachments
#"volume:multiattach_bootable_volume": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

