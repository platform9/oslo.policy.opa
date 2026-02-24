package volume_thaw_host_test

import data.volume.thaw_host

test_thaw_host_0 if thaw_host.allow with input as {"credentials": {"is_admin": true}}
test_thaw_host_1 if thaw_host.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
