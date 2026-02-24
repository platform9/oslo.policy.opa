package identity_delete_policy_test

import data.identity.delete_policy

test_delete_policy_0 if delete_policy.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_policy_1 if delete_policy.allow with input as {"credentials": {"is_admin": 1}}
