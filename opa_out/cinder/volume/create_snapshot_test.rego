package volume_create_snapshot_test

import data.volume.create_snapshot

test_create_snapshot_0 if create_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_snapshot_1 if create_snapshot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
