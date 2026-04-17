package scheduler_extension.scheduler_stats.get_pools

import data.cinder_lib

# List all backend pools.
# GET  /scheduler-stats/get_pools
# "scheduler_extension:scheduler_stats:get_pools": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
