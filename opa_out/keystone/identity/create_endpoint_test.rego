package identity_create_endpoint_test

import data.identity.create_endpoint

test_create_endpoint_0 if create_endpoint.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_endpoint_1 if create_endpoint.allow with input as {"credentials": {"is_admin": 1}}
