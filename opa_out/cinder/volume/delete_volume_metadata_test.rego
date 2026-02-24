package volume_delete_volume_metadata_test

import data.volume.delete_volume_metadata

test_delete_volume_metadata_0 if delete_volume_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_volume_metadata_1 if delete_volume_metadata.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
