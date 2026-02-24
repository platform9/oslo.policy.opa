package volume_extension_volume_admin_actions_migrate_volume_completion_test

import data.volume_extension.volume_admin_actions.migrate_volume_completion

test_migrate_volume_completion_0 if migrate_volume_completion.allow with input as {"credentials": {"is_admin": true}}
test_migrate_volume_completion_1 if migrate_volume_completion.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
