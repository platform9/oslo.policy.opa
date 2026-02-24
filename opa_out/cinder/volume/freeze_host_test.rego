package volume_freeze_host_test

import data.volume.freeze_host

test_freeze_host_0 if freeze_host.allow with input as {"credentials": {"is_admin": true}}
test_freeze_host_1 if freeze_host.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
