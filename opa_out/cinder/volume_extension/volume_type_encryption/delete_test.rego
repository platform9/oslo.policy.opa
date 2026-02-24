package volume_extension_volume_type_encryption_delete_test

import data.volume_extension.volume_type_encryption.delete

test_delete_0 if delete.allow with input as {"credentials": {"is_admin": true}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
