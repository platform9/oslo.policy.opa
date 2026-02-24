package os_compute_api_servers_create_image_allow_volume_backed_test

import data.os_compute_api.servers.create_image.allow_volume_backed

test_allow_volume_backed_0 if allow_volume_backed.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_allow_volume_backed_1 if allow_volume_backed.allow with input as {"credentials": {"roles": ["admin"]}}
