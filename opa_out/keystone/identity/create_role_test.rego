package identity_create_role_test

import data.identity.create_role

test_create_role_0 if create_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_role_1 if create_role.allow with input as {"credentials": {"is_admin": 1}}
