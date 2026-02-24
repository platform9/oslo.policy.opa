package os_compute_api_os_suspend_server_suspend_test

import data.os_compute_api.os_suspend_server.suspend

test_suspend_0 if suspend.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_suspend_1 if suspend.allow with input as {"credentials": {"roles": ["admin"]}}
