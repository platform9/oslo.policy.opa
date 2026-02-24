package os_compute_api_os_unrescue_test

import data.os_compute_api.os_unrescue

test_os_unrescue_0 if os_unrescue.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_os_unrescue_1 if os_unrescue.allow with input as {"credentials": {"roles": ["admin"]}}
