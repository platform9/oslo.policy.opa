package volume_extension.volume_type_encryption.update

import data.lib

# Update volume type encryption.
# PUT  /types/{type_id}/encryption/{encryption_id}
#"volume_extension:volume_type_encryption:update": "rule:admin_api"


allow if {
  lib.admin_api
}

