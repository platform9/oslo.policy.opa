package volume.create_transfer

import data.lib

# Create a volume transfer.
# POST  /os-volume-transfer
# POST  /volume_transfers
#"volume:create_transfer": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

