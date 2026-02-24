package volume_extension_volume_unmanage_test

import data.volume_extension.volume_unmanage

test_volume_unmanage_0 if volume_unmanage.allow with input as {"credentials": {"is_admin": true}}
test_volume_unmanage_1 if volume_unmanage.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
