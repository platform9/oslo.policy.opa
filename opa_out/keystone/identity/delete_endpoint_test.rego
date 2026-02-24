package identity_delete_endpoint_test

import data.identity.delete_endpoint

test_delete_endpoint_0 if delete_endpoint.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_endpoint_1 if delete_endpoint.allow with input as {"credentials": {"is_admin": 1}}
