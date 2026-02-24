package os_compute_api_os_security_groups_list_test

import data.os_compute_api.os_security_groups.list

test_list_0 if list.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_list_1 if list.allow with input as {"credentials": {"roles": ["admin"]}}
