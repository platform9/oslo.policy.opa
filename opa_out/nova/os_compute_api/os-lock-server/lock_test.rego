package os_compute_api_os_lock_server_lock_test

import data.os_compute_api.os_lock_server.lock

test_lock_0 if lock.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_lock_1 if lock.allow with input as {"credentials": {"roles": ["admin"]}}
