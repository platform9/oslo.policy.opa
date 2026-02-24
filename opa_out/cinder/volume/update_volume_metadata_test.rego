package volume_update_volume_metadata_test

import data.volume.update_volume_metadata

test_update_volume_metadata_0 if update_volume_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_volume_metadata_1 if update_volume_metadata.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
