package identity_delete_domain_test

import data.identity.delete_domain

test_delete_domain_0 if delete_domain.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_domain_1 if delete_domain.allow with input as {"credentials": {"is_admin": 1}}
