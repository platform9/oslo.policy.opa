package volume_extension_type_create_test

import data.volume_extension.type_create

test_type_create_0 if type_create.allow with input as {"credentials": {"is_admin": true}}
test_type_create_1 if type_create.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
