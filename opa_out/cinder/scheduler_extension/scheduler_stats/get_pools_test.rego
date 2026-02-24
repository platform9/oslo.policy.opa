package scheduler_extension_scheduler_stats_get_pools_test

import data.scheduler_extension.scheduler_stats.get_pools

test_get_pools_0 if get_pools.allow with input as {"credentials": {"is_admin": true}}
test_get_pools_1 if get_pools.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
