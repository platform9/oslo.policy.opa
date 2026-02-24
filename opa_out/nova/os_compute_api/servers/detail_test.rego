package os_compute_api_servers_detail_test

import data.os_compute_api.servers.detail

test_detail_0 if detail.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_detail_1 if detail.allow with input as {"credentials": {"roles": ["admin"]}}
