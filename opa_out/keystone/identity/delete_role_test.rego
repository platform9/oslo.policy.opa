package identity_delete_role_test

import data.identity.delete_role

test_delete_role_0 if delete_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_role_1 if delete_role.allow with input as {"credentials": {"is_admin": 1}}
