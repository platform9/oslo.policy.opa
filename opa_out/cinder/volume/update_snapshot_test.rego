package volume_update_snapshot_test

import data.volume.update_snapshot

test_update_snapshot_0 if update_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_snapshot_1 if update_snapshot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
