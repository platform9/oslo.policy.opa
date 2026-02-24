package volume_extension_dflt_get_test

import data.volume_extension.dflt_get

test_dflt_get_0 if dflt_get.allow with input as {"credentials": {"is_admin": true}}
test_dflt_get_1 if dflt_get.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
