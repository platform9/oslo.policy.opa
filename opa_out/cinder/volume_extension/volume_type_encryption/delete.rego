package volume_extension.volume_type_encryption.delete

import data.lib

# Delete volume type encryption.
# DELETE  /types/{type_id}/encryption/{encryption_id}
#"volume_extension:volume_type_encryption:delete": "rule:admin_api"


allow if {
  lib.admin_api
}

