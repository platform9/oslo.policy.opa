package snapshot_extension_snapshot_actions_update_snapshot_status_test

import data.snapshot_extension.snapshot_actions.update_snapshot_status

test_update_snapshot_status_0 if update_snapshot_status.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_snapshot_status_1 if update_snapshot_status.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
