package identity_authorize_request_token_test

import data.identity.authorize_request_token

test_authorize_request_token_0 if authorize_request_token.allow with input as {"credentials": {"roles": ["admin"]}}
test_authorize_request_token_1 if authorize_request_token.allow with input as {"credentials": {"is_admin": 1}}
