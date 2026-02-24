package identity_delete_policy_association_for_service_test

import data.identity.delete_policy_association_for_service

test_delete_policy_association_for_service_0 if delete_policy_association_for_service.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_policy_association_for_service_1 if delete_policy_association_for_service.allow with input as {"credentials": {"is_admin": 1}}
