package volume_extension_types_extra_specs_create_test

import data.volume_extension.types_extra_specs.create

test_create_0 if create.allow with input as {"credentials": {"is_admin": true}}
test_create_1 if create.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
