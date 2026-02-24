package volume_extension_volume_image_metadata_set_test

import data.volume_extension.volume_image_metadata.set

test_set_0 if set.allow with input as {"credentials": {"roles": ["admin"]}}
test_set_1 if set.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
