package os_compute_api_servers_create_image_test

import data.os_compute_api.servers.create_image

test_create_image_0 if create_image.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_create_image_1 if create_image.allow with input as {"credentials": {"roles": ["admin"]}}
