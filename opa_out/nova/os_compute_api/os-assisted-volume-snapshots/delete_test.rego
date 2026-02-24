package os_compute_api_os_assisted_volume_snapshots_delete_test

import data.os_compute_api.os_assisted_volume_snapshots.delete

test_delete_0 if delete.allow with input as {"credentials": {"roles": ["service"]}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["admin"]}}
