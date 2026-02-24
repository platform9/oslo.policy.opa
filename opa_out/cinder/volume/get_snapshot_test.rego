package volume_get_snapshot_test

import data.volume.get_snapshot

test_get_snapshot_0 if get_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_snapshot_1 if get_snapshot.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
