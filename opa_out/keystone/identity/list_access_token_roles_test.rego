package identity_list_access_token_roles_test

import data.identity.list_access_token_roles

test_list_access_token_roles_0 if list_access_token_roles.allow with input as {"credentials": {"roles": ["admin"]}}
test_list_access_token_roles_1 if list_access_token_roles.allow with input as {"credentials": {"is_admin": 1}}
