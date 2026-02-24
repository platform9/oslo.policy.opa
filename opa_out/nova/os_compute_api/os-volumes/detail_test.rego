package os_compute_api_os_volumes_detail_test

import data.os_compute_api.os_volumes.detail

test_detail_0 if detail.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_detail_1 if detail.allow with input as {"credentials": {"roles": ["admin"]}}
