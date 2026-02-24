package group_disable_replication_test

import data.group.disable_replication

test_disable_replication_0 if disable_replication.allow with input as {"credentials": {"roles": ["admin"]}}
test_disable_replication_1 if disable_replication.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
