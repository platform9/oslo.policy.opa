package volume.failover_host

import data.lib

# Failover a backend host.
# PUT  /os-services/failover_host
#"volume:failover_host": "rule:admin_api"


allow if {
  lib.admin_api
}

