package scheduler_extension.scheduler_stats.get_pools

import data.lib

# List all backend pools.
# GET  /scheduler-stats/get_pools
#"scheduler_extension:scheduler_stats:get_pools": "rule:admin_api"


allow if {
  lib.admin_api
}

