package volume_extension_volume_type_encryption_get_test

import data.volume_extension.volume_type_encryption.get

test_get_0 if get.allow with input as {"credentials": {"is_admin": true}}
test_get_1 if get.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
