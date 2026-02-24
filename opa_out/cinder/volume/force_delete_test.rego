package volume_force_delete_test

import data.volume.force_delete

test_force_delete_0 if force_delete.allow with input as {"credentials": {"is_admin": true}}
test_force_delete_1 if force_delete.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
