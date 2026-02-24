package volume_extension_dflt_unset_test

import data.volume_extension.dflt_unset

test_dflt_unset_0 if dflt_unset.allow with input as {"credentials": {"is_admin": true}}
test_dflt_unset_1 if dflt_unset.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
