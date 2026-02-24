package volume_extension.volume_manage

import data.lib

# Manage existing volumes.
# POST  /manageable_volumes
#"volume_extension:volume_manage": "rule:admin_api"


allow if {
  lib.admin_api
}

