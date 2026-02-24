package volume_extension_type_delete_test

import data.volume_extension.type_delete

test_type_delete_0 if type_delete.allow with input as {"credentials": {"is_admin": true}}
test_type_delete_1 if type_delete.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
