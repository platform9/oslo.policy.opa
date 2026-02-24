package volume_extension_dflt_set_or_update_test

import data.volume_extension.dflt_set_or_update

test_dflt_set_or_update_0 if dflt_set_or_update.allow with input as {"credentials": {"is_admin": true}}
test_dflt_set_or_update_1 if dflt_set_or_update.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
