package clusters.update

import data.lib

# Update cluster.
# PUT  /clusters/{cluster_id}
#"clusters:update": "rule:admin_api"


allow if {
  lib.admin_api
}

