package os_compute_api_servers_confirm_resize_test

import data.os_compute_api.servers.confirm_resize

test_confirm_resize_0 if confirm_resize.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_confirm_resize_1 if confirm_resize.allow with input as {"credentials": {"roles": ["admin"]}}
