package backup_restore_test

import data.backup.restore

test_restore_0 if restore.allow with input as {"credentials": {"roles": ["admin"]}}
test_restore_1 if restore.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
