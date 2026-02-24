package volume_delete_snapshot_metadata_test

import data.volume.delete_snapshot_metadata

test_delete_snapshot_metadata_0 if delete_snapshot_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_snapshot_metadata_1 if delete_snapshot_metadata.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
