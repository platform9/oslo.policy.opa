package group_delete_group_snapshot_test

import data.group.delete_group_snapshot

test_delete_group_snapshot_0 if delete_group_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_group_snapshot_1 if delete_group_snapshot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
