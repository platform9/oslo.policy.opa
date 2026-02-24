package os_compute_api_servers_index_test

import data.os_compute_api.servers.index

test_index_0 if index.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_index_1 if index.allow with input as {"credentials": {"roles": ["admin"]}}
