package volume_get_snapshot_metadata_test

import data.volume.get_snapshot_metadata

test_get_snapshot_metadata_0 if get_snapshot_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_snapshot_metadata_1 if get_snapshot_metadata.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
