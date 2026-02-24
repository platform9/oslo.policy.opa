package volume_extension_qos_specs_manage_create_test

import data.volume_extension.qos_specs_manage.create

test_create_0 if create.allow with input as {"credentials": {"is_admin": true}}
test_create_1 if create.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
