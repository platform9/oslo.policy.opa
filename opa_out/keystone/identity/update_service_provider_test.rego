package identity_update_service_provider_test

import data.identity.update_service_provider

test_update_service_provider_0 if update_service_provider.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_service_provider_1 if update_service_provider.allow with input as {"credentials": {"is_admin": 1}}
