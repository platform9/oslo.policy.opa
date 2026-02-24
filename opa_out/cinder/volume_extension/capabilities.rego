package volume_extension.capabilities

import data.lib

# Show backend capabilities.
# GET  /capabilities/{host_name}
#"volume_extension:capabilities": "rule:admin_api"


allow if {
  lib.admin_api
}

