package os_compute_api_os_lock_server_unlock_test

import data.os_compute_api.os_lock_server.unlock

test_unlock_0 if unlock.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_unlock_1 if unlock.allow with input as {"credentials": {"roles": ["admin"]}}
