package identity_delete_access_token_test

import data.identity.delete_access_token

test_delete_access_token_0 if delete_access_token.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_access_token_1 if delete_access_token.allow with input as {"credentials": {"is_admin": 1}}
