package identity_delete_service_provider_test

import data.identity.delete_service_provider

test_delete_service_provider_0 if delete_service_provider.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_service_provider_1 if delete_service_provider.allow with input as {"credentials": {"is_admin": 1}}
