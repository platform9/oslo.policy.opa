package identity_create_policy_association_for_region_and_service_test

import data.identity.create_policy_association_for_region_and_service

test_create_policy_association_for_region_and_service_0 if create_policy_association_for_region_and_service.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_policy_association_for_region_and_service_1 if create_policy_association_for_region_and_service.allow with input as {"credentials": {"is_admin": 1}}
