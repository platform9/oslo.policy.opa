package identity_update_registered_limit_test

import data.identity.update_registered_limit

test_update_registered_limit_0 if update_registered_limit.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_registered_limit_1 if update_registered_limit.allow with input as {"credentials": {"is_admin": 1}}
