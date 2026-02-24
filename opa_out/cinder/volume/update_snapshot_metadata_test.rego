package volume_update_snapshot_metadata_test

import data.volume.update_snapshot_metadata

test_update_snapshot_metadata_0 if update_snapshot_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_snapshot_metadata_1 if update_snapshot_metadata.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
