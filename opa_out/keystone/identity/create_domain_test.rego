package identity_create_domain_test

import data.identity.create_domain

test_create_domain_0 if create_domain.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_domain_1 if create_domain.allow with input as {"credentials": {"is_admin": 1}}
