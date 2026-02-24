package snapshot_extension_snapshot_unmanage_test

import data.snapshot_extension.snapshot_unmanage

test_snapshot_unmanage_0 if snapshot_unmanage.allow with input as {"credentials": {"is_admin": true}}
test_snapshot_unmanage_1 if snapshot_unmanage.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
