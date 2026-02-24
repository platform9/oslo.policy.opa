package os_compute_api_servers_create_attach_network_test

import data.os_compute_api.servers.create.attach_network

test_attach_network_0 if attach_network.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_attach_network_1 if attach_network.allow with input as {"credentials": {"roles": ["admin"]}}
