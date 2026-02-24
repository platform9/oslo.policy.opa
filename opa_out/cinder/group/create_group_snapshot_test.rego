package group_create_group_snapshot_test

import data.group.create_group_snapshot

test_create_group_snapshot_0 if create_group_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_group_snapshot_1 if create_group_snapshot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
