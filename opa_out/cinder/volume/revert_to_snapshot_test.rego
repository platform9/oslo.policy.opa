package volume_revert_to_snapshot_test

import data.volume.revert_to_snapshot

test_revert_to_snapshot_0 if revert_to_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_revert_to_snapshot_1 if revert_to_snapshot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
