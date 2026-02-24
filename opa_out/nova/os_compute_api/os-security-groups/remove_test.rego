package os_compute_api_os_security_groups_remove_test

import data.os_compute_api.os_security_groups.remove

test_remove_0 if remove.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_remove_1 if remove.allow with input as {"credentials": {"roles": ["admin"]}}
