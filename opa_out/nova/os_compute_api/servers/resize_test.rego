package os_compute_api_servers_resize_test

import data.os_compute_api.servers.resize

test_resize_0 if resize.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_resize_1 if resize.allow with input as {"credentials": {"roles": ["admin"]}}
