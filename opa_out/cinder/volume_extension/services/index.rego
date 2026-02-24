package volume_extension.services.index

import data.lib

# List all services.
# GET  /os-services
#"volume_extension:services:index": "rule:admin_api"


allow if {
  lib.admin_api
}

