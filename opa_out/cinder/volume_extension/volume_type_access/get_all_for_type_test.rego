package volume_extension_volume_type_access_get_all_for_type_test

import data.volume_extension.volume_type_access.get_all_for_type

test_get_all_for_type_0 if get_all_for_type.allow with input as {"credentials": {"is_admin": true}}
test_get_all_for_type_1 if get_all_for_type.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
