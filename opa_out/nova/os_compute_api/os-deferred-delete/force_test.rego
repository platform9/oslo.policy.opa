package os_compute_api_os_deferred_delete_force_test

import data.os_compute_api.os_deferred_delete.force

test_force_0 if force.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_force_1 if force.allow with input as {"credentials": {"roles": ["admin"]}}
