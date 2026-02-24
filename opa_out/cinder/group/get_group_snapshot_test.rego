package group_get_group_snapshot_test

import data.group.get_group_snapshot

test_get_group_snapshot_0 if get_group_snapshot.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_group_snapshot_1 if get_group_snapshot.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
