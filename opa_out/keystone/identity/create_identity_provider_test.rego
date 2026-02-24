package identity_create_identity_provider_test

import data.identity.create_identity_provider

test_create_identity_provider_0 if create_identity_provider.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_identity_provider_1 if create_identity_provider.allow with input as {"credentials": {"is_admin": 1}}
