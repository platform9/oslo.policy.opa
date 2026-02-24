package os_compute_api_servers_create_attach_volume_test

import data.os_compute_api.servers.create.attach_volume

test_attach_volume_0 if attach_volume.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_attach_volume_1 if attach_volume.allow with input as {"credentials": {"roles": ["admin"]}}
