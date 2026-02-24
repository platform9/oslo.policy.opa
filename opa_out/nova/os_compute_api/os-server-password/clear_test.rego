package os_compute_api_os_server_password_clear_test

import data.os_compute_api.os_server_password.clear

test_clear_0 if clear.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_clear_1 if clear.allow with input as {"credentials": {"roles": ["admin"]}}
