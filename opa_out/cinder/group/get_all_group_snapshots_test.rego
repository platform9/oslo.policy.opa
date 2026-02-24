package group_get_all_group_snapshots_test

import data.group.get_all_group_snapshots

test_get_all_group_snapshots_0 if get_all_group_snapshots.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_all_group_snapshots_1 if get_all_group_snapshots.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
