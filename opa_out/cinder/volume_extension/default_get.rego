package volume_extension.dflt_get

import data.lib

# Get default types.
# GET  /default-types/{project-id}
#"volume_extension:default_get": "rule:admin_api"


allow if {
  lib.admin_api
}

