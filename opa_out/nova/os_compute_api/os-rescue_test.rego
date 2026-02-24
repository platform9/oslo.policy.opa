package os_compute_api_os_rescue_test

import data.os_compute_api.os_rescue

test_os_rescue_0 if os_rescue.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_os_rescue_1 if os_rescue.allow with input as {"credentials": {"roles": ["admin"]}}
