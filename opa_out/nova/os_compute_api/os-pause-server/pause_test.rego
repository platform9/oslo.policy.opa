package os_compute_api_os_pause_server_pause_test

import data.os_compute_api.os_pause_server.pause

test_pause_0 if pause.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_pause_1 if pause.allow with input as {"credentials": {"roles": ["admin"]}}
