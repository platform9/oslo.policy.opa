package group_update_group_snapshot_test

import data.group.update_group_snapshot

test_update_group_snapshot_0 if update_group_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_group_snapshot_1 if update_group_snapshot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
