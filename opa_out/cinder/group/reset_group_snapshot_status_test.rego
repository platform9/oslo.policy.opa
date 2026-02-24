package group_reset_group_snapshot_status_test

import data.group.reset_group_snapshot_status

test_reset_group_snapshot_status_0 if reset_group_snapshot_status.allow with input as {"credentials": {"is_admin": true}}
test_reset_group_snapshot_status_1 if reset_group_snapshot_status.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
