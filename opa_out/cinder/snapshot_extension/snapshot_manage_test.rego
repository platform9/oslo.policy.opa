package snapshot_extension_snapshot_manage_test

import data.snapshot_extension.snapshot_manage

test_snapshot_manage_0 if snapshot_manage.allow with input as {"credentials": {"is_admin": true}}
test_snapshot_manage_1 if snapshot_manage.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
