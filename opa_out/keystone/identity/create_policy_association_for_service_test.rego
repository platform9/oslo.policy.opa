package identity_create_policy_association_for_service_test

import data.identity.create_policy_association_for_service

test_create_policy_association_for_service_0 if create_policy_association_for_service.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_policy_association_for_service_1 if create_policy_association_for_service.allow with input as {"credentials": {"is_admin": 1}}
