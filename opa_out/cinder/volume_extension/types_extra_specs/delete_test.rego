package volume_extension_types_extra_specs_delete_test

import data.volume_extension.types_extra_specs.delete

test_delete_0 if delete.allow with input as {"credentials": {"is_admin": true}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
