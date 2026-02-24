package volume.accept_transfer

import data.lib

# Accept a volume transfer.
# POST  /os-volume-transfer/{transfer_id}/accept
# POST  /volume-transfers/{transfer_id}/accept
#"volume:accept_transfer": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

