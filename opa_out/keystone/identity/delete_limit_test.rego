package identity_delete_limit_test

import data.identity.delete_limit

test_delete_limit_0 if delete_limit.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_limit_1 if delete_limit.allow with input as {"credentials": {"is_admin": 1}}
