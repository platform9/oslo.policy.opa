package volume_extension_snapshot_admin_actions_reset_status_test

import data.volume_extension.snapshot_admin_actions.reset_status

test_reset_status_0 if reset_status.allow with input as {"credentials": {"is_admin": true}}
test_reset_status_1 if reset_status.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
