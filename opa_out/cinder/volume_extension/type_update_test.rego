package volume_extension_type_update_test

import data.volume_extension.type_update

test_type_update_0 if type_update.allow with input as {"credentials": {"is_admin": true}}
test_type_update_1 if type_update.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
