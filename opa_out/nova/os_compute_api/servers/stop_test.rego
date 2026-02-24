package os_compute_api_servers_stop_test

import data.os_compute_api.servers.stop

test_stop_0 if stop.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_stop_1 if stop.allow with input as {"credentials": {"roles": ["admin"]}}
