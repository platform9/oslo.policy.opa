package os_compute_api_servers_revert_resize_test

import data.os_compute_api.servers.revert_resize

test_revert_resize_0 if revert_resize.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_revert_resize_1 if revert_resize.allow with input as {"credentials": {"roles": ["admin"]}}
