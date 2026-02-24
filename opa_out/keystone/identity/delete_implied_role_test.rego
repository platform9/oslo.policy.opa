package identity_delete_implied_role_test

import data.identity.delete_implied_role

test_delete_implied_role_0 if delete_implied_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_implied_role_1 if delete_implied_role.allow with input as {"credentials": {"is_admin": 1}}
