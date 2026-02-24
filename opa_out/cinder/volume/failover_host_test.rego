package volume_failover_host_test

import data.volume.failover_host

test_failover_host_0 if failover_host.allow with input as {"credentials": {"is_admin": true}}
test_failover_host_1 if failover_host.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
