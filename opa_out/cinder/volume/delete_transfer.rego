package volume.delete_transfer

import data.lib

# Delete volume transfer.
# DELETE  /os-volume-transfer/{transfer_id}
# DELETE  /volume-transfers/{transfer_id}
#"volume:delete_transfer": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

