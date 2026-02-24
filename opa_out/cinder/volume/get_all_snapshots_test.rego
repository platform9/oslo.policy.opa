package volume_get_all_snapshots_test

import data.volume.get_all_snapshots

test_get_all_snapshots_0 if get_all_snapshots.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_all_snapshots_1 if get_all_snapshots.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
