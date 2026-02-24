package os_compute_api_os_security_groups_get_test

import data.os_compute_api.os_security_groups.get

test_get_0 if get.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_get_1 if get.allow with input as {"credentials": {"roles": ["admin"]}}
