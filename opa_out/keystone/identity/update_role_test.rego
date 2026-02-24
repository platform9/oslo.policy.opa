package identity_update_role_test

import data.identity.update_role

test_update_role_0 if update_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_role_1 if update_role.allow with input as {"credentials": {"is_admin": 1}}
