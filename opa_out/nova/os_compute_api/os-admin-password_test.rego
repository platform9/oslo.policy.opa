package os_compute_api_os_admin_password_test

import data.os_compute_api.os_admin_password

test_os_admin_password_0 if os_admin_password.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_os_admin_password_1 if os_admin_password.allow with input as {"credentials": {"roles": ["admin"]}}
