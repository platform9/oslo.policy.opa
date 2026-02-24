package identity_create_region_test

import data.identity.create_region

test_create_region_0 if create_region.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_region_1 if create_region.allow with input as {"credentials": {"is_admin": 1}}
