package volume_get_volume_metadata_test

import data.volume.get_volume_metadata

test_get_volume_metadata_0 if get_volume_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_volume_metadata_1 if get_volume_metadata.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
