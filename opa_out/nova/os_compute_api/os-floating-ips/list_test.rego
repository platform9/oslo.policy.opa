package os_compute_api_os_floating_ips_list_test

import data.os_compute_api.os_floating_ips.list

test_list_0 if list.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_list_1 if list.allow with input as {"credentials": {"roles": ["admin"]}}
