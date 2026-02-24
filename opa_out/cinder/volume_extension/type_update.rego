package volume_extension.type_update

import data.lib

# Update volume type.
# PUT  /types
#"volume_extension:type_update": "rule:admin_api"


allow if {
  lib.admin_api
}

