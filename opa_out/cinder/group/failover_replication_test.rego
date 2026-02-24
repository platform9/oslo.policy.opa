package group_failover_replication_test

import data.group.failover_replication

test_failover_replication_0 if failover_replication.allow with input as {"credentials": {"roles": ["admin"]}}
test_failover_replication_1 if failover_replication.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
