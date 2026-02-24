package identity_delete_policy_association_for_endpoint_test

import data.identity.delete_policy_association_for_endpoint

test_delete_policy_association_for_endpoint_0 if delete_policy_association_for_endpoint.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_policy_association_for_endpoint_1 if delete_policy_association_for_endpoint.allow with input as {"credentials": {"is_admin": 1}}
