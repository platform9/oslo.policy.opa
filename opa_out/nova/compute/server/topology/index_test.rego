package compute_server_topology_index_test

import data.compute.server.topology.index

test_index_0 if index.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_index_1 if index.allow with input as {"credentials": {"roles": ["admin"]}}
