package os_compute_api_servers_rebuild_test

import data.os_compute_api.servers.rebuild

test_rebuild_0 if rebuild.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_rebuild_1 if rebuild.allow with input as {"credentials": {"roles": ["admin"]}}
