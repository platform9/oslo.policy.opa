package identity_update_policy_test

import data.identity.update_policy

test_update_policy_0 if update_policy.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_policy_1 if update_policy.allow with input as {"credentials": {"is_admin": 1}}
