package group_list_replication_targets_test

import data.group.list_replication_targets

test_list_replication_targets_0 if list_replication_targets.allow with input as {"credentials": {"roles": ["admin"]}}
test_list_replication_targets_1 if list_replication_targets.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
