package os_compute_api_os_multinic_remove_test

import data.os_compute_api.os_multinic.remove

test_remove_0 if remove.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_remove_1 if remove.allow with input as {"credentials": {"roles": ["admin"]}}
