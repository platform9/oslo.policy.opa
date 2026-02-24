package volume_extension.type_create

import data.lib

# Create volume type.
# POST  /types
#"volume_extension:type_create": "rule:admin_api"


allow if {
  lib.admin_api
}

