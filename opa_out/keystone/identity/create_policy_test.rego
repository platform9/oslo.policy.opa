package identity_create_policy_test

import data.identity.create_policy

test_create_policy_0 if create_policy.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_policy_1 if create_policy.allow with input as {"credentials": {"is_admin": 1}}
