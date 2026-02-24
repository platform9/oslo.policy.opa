package volume_extension_volume_type_access_removeProjectAccess_test

import data.volume_extension.volume_type_access.removeProjectAccess

test_removeProjectAccess_0 if removeProjectAccess.allow with input as {"credentials": {"is_admin": true}}
test_removeProjectAccess_1 if removeProjectAccess.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
