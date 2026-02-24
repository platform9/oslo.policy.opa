package identity_update_region_test

import data.identity.update_region

test_update_region_0 if update_region.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_region_1 if update_region.allow with input as {"credentials": {"is_admin": 1}}
