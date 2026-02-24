package os_compute_api_servers_update_test

import data.os_compute_api.servers.update

test_update_0 if update.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_update_1 if update.allow with input as {"credentials": {"roles": ["admin"]}}
