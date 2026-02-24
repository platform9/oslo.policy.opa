package identity_create_endpoint_group_test

import data.identity.create_endpoint_group

test_create_endpoint_group_0 if create_endpoint_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_endpoint_group_1 if create_endpoint_group.allow with input as {"credentials": {"is_admin": 1}}
