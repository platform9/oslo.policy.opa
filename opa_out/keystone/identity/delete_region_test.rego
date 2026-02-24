package identity_delete_region_test

import data.identity.delete_region

test_delete_region_0 if delete_region.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_region_1 if delete_region.allow with input as {"credentials": {"is_admin": 1}}
