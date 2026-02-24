package volume.get_transfer

import data.lib

# Show one specified volume transfer.
# GET  /os-volume-transfer/{transfer_id}
# GET  /volume-transfers/{transfer_id}
#"volume:get_transfer": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

