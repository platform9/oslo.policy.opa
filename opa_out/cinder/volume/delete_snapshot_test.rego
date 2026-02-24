package volume_delete_snapshot_test

import data.volume.delete_snapshot

test_delete_snapshot_0 if delete_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_snapshot_1 if delete_snapshot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
