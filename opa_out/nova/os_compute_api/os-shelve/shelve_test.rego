package os_compute_api_os_shelve_shelve_test

import data.os_compute_api.os_shelve.shelve

test_shelve_0 if shelve.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_shelve_1 if shelve.allow with input as {"credentials": {"roles": ["admin"]}}
