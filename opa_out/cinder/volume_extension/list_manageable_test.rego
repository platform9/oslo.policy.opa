package volume_extension_list_manageable_test

import data.volume_extension.list_manageable

test_list_manageable_0 if list_manageable.allow with input as {"credentials": {"is_admin": true}}
test_list_manageable_1 if list_manageable.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
