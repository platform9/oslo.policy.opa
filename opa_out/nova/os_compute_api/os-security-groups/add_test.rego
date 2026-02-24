package os_compute_api_os_security_groups_add_test

import data.os_compute_api.os_security_groups.add

test_add_0 if add.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_add_1 if add.allow with input as {"credentials": {"roles": ["admin"]}}
