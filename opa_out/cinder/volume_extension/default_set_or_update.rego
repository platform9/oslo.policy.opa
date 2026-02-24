package volume_extension.dflt_set_or_update

import data.lib

# Set or update default volume type.
# PUT  /default-types
#"volume_extension:default_set_or_update": "rule:admin_api"


allow if {
  lib.admin_api
}

