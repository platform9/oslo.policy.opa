package volume_extension.dflt_unset

import data.lib

# Unset default type.
# DELETE  /default-types/{project-id}
#"volume_extension:default_unset": "rule:admin_api"


allow if {
  lib.admin_api
}

