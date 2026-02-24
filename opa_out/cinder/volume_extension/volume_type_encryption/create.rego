package volume_extension.volume_type_encryption.create

import data.lib

# Create volume type encryption.
# POST  /types/{type_id}/encryption
#"volume_extension:volume_type_encryption:create": "rule:admin_api"


allow if {
  lib.admin_api
}

