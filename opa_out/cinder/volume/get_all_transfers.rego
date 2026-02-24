package volume.get_all_transfers

import data.lib

# List volume transfer.
# GET  /os-volume-transfer
# GET  /os-volume-transfer/detail
# GET  /volume_transfers
# GET  /volume-transfers/detail
#"volume:get_all_transfers": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

