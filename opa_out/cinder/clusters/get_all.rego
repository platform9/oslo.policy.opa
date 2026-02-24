package clusters.get_all

import data.lib

# List clusters.
# GET  /clusters
# GET  /clusters/detail
#"clusters:get_all": "rule:admin_api"


allow if {
  lib.admin_api
}

