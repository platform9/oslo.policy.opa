package volume_create_from_image_test

import data.volume.create_from_image

test_create_from_image_0 if create_from_image.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_from_image_1 if create_from_image.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
