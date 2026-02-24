package volume_extension_volume_type_encryption_update_test

import data.volume_extension.volume_type_encryption.update

test_update_0 if update.allow with input as {"credentials": {"is_admin": true}}
test_update_1 if update.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
