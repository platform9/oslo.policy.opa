package volume_extension_volume_type_access_addProjectAccess_test

import data.volume_extension.volume_type_access.addProjectAccess

test_addProjectAccess_0 if addProjectAccess.allow with input as {"credentials": {"is_admin": true}}
test_addProjectAccess_1 if addProjectAccess.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
