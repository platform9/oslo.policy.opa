package identity_create_registered_limits_test

import data.identity.create_registered_limits

test_create_registered_limits_0 if create_registered_limits.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_registered_limits_1 if create_registered_limits.allow with input as {"credentials": {"is_admin": 1}}
