package volume_extension_types_extra_specs_update_test

import data.volume_extension.types_extra_specs.update

test_update_0 if update.allow with input as {"credentials": {"is_admin": true}}
test_update_1 if update.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
