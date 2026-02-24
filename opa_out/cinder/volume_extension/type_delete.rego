package volume_extension.type_delete

import data.lib

# Delete volume type.
# DELETE  /types
#"volume_extension:type_delete": "rule:admin_api"


allow if {
  lib.admin_api
}

