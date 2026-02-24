package identity_get_access_token_test

import data.identity.get_access_token

test_get_access_token_0 if get_access_token.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_access_token_1 if get_access_token.allow with input as {"credentials": {"is_admin": 1}}
