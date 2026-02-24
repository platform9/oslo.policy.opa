package os_compute_api_os_pause_server_unpause_test

import data.os_compute_api.os_pause_server.unpause

test_unpause_0 if unpause.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_unpause_1 if unpause.allow with input as {"credentials": {"roles": ["admin"]}}
