package identity_update_identity_provider_test

import data.identity.update_identity_provider

test_update_identity_provider_0 if update_identity_provider.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_identity_provider_1 if update_identity_provider.allow with input as {"credentials": {"is_admin": 1}}
