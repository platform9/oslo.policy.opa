package identity_create_service_provider_test

import data.identity.create_service_provider

test_create_service_provider_0 if create_service_provider.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_service_provider_1 if create_service_provider.allow with input as {"credentials": {"is_admin": 1}}
