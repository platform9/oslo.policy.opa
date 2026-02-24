package volume_extension_volume_manage_test

import data.volume_extension.volume_manage

test_volume_manage_0 if volume_manage.allow with input as {"credentials": {"is_admin": true}}
test_volume_manage_1 if volume_manage.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
