package identity_create_policy_association_for_endpoint_test

import data.identity.create_policy_association_for_endpoint

test_create_policy_association_for_endpoint_0 if create_policy_association_for_endpoint.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_policy_association_for_endpoint_1 if create_policy_association_for_endpoint.allow with input as {"credentials": {"is_admin": 1}}
