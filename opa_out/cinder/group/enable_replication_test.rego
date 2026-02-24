package group_enable_replication_test

import data.group.enable_replication

test_enable_replication_0 if enable_replication.allow with input as {"credentials": {"roles": ["admin"]}}
test_enable_replication_1 if enable_replication.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
