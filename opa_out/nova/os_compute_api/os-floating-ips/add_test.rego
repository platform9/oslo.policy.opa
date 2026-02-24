package os_compute_api_os_floating_ips_add_test

import data.os_compute_api.os_floating_ips.add

test_add_0 if add.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_add_1 if add.allow with input as {"credentials": {"roles": ["admin"]}}
