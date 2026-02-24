package os_compute_api_os_shelve_unshelve_test

import data.os_compute_api.os_shelve.unshelve

test_unshelve_0 if unshelve.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_unshelve_1 if unshelve.allow with input as {"credentials": {"roles": ["admin"]}}
