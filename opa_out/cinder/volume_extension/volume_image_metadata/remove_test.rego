package volume_extension_volume_image_metadata_remove_test

import data.volume_extension.volume_image_metadata.remove

test_remove_0 if remove.allow with input as {"credentials": {"roles": ["admin"]}}
test_remove_1 if remove.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
