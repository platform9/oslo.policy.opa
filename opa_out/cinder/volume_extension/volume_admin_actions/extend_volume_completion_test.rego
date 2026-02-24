package volume_extension_volume_admin_actions_extend_volume_completion_test

import data.volume_extension.volume_admin_actions.extend_volume_completion

test_extend_volume_completion_0 if extend_volume_completion.allow with input as {"credentials": {"is_admin": true}}
test_extend_volume_completion_1 if extend_volume_completion.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
