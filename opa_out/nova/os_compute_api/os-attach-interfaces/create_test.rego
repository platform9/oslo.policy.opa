package os_compute_api_os_attach_interfaces_create_test

import data.os_compute_api.os_attach_interfaces.create

test_create_0 if create.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_create_1 if create.allow with input as {"credentials": {"roles": ["admin"]}}
