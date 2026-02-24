package identity_list_access_tokens_test

import data.identity.list_access_tokens

test_list_access_tokens_0 if list_access_tokens.allow with input as {"credentials": {"roles": ["admin"]}}
test_list_access_tokens_1 if list_access_tokens.allow with input as {"credentials": {"is_admin": 1}}
