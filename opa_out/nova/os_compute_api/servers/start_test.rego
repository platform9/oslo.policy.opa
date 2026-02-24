package os_compute_api_servers_start_test

import data.os_compute_api.servers.start

test_start_0 if start.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_start_1 if start.allow with input as {"credentials": {"roles": ["admin"]}}
