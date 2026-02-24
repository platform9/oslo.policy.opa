package identity_get_access_token_role_test

import data.identity.get_access_token_role

test_get_access_token_role_0 if get_access_token_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_access_token_role_1 if get_access_token_role.allow with input as {"credentials": {"is_admin": 1}}
