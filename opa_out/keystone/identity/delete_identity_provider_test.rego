package identity_delete_identity_provider_test

import data.identity.delete_identity_provider

test_delete_identity_provider_0 if delete_identity_provider.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_identity_provider_1 if delete_identity_provider.allow with input as {"credentials": {"is_admin": 1}}
