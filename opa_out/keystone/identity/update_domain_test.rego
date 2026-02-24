package identity_update_domain_test

import data.identity.update_domain

test_update_domain_0 if update_domain.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_domain_1 if update_domain.allow with input as {"credentials": {"is_admin": 1}}
