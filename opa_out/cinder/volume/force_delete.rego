package volume.force_delete

import data.lib

# Force Delete a volume.
# DELETE  /volumes/{volume_id}
#"volume:force_delete": "rule:admin_api"


allow if {
  lib.admin_api
}

