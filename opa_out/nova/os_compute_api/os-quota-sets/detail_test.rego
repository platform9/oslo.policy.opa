package os_compute_api_os_quota_sets_detail_test

import data.os_compute_api.os_quota_sets.detail

test_detail_0 if detail.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_detail_1 if detail.allow with input as {"credentials": {"roles": ["admin"]}}
