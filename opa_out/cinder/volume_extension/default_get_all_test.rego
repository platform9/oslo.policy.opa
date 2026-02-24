package volume_extension_dflt_get_all_test

import data.volume_extension.dflt_get_all

test_dflt_get_all_0 if dflt_get_all.allow with input as {"credentials": {"is_admin": true}}
test_dflt_get_all_1 if dflt_get_all.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
