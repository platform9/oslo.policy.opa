package identity_update_endpoint_test

import data.identity.update_endpoint

test_update_endpoint_0 if update_endpoint.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_endpoint_1 if update_endpoint.allow with input as {"credentials": {"is_admin": 1}}
