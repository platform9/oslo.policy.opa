package volume_create_volume_metadata_test

import data.volume.create_volume_metadata

test_create_volume_metadata_0 if create_volume_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_volume_metadata_1 if create_volume_metadata.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
