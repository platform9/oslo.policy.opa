package identity_create_service_test

import data.identity.create_service

test_create_service_0 if create_service.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_service_1 if create_service.allow with input as {"credentials": {"is_admin": 1}}
