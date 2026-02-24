package clusters.get

import data.lib

# Show cluster.
# GET  /clusters/{cluster_id}
#"clusters:get": "rule:admin_api"


allow if {
  lib.admin_api
}

