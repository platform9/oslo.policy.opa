package os_compute_api_os_deferred_delete_restore_test

import data.os_compute_api.os_deferred_delete.restore

test_restore_0 if restore.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_restore_1 if restore.allow with input as {"credentials": {"roles": ["admin"]}}
