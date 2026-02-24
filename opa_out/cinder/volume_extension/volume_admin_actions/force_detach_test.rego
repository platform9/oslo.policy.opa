package volume_extension_volume_admin_actions_force_detach_test

import data.volume_extension.volume_admin_actions.force_detach

test_force_detach_0 if force_detach.allow with input as {"credentials": {"is_admin": true}}
test_force_detach_1 if force_detach.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
