package volume_extension_volume_admin_actions_migrate_volume_test

import data.volume_extension.volume_admin_actions.migrate_volume

test_migrate_volume_0 if migrate_volume.allow with input as {"credentials": {"is_admin": true}}
test_migrate_volume_1 if migrate_volume.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
