package volume_extension.services.update

import data.lib

# Update service, including failover_host, thaw, freeze, disable,
# enable, set-log and get-log actions.
# PUT  /os-services/{action}
#"volume_extension:services:update": "rule:admin_api"


allow if {
  lib.admin_api
}

