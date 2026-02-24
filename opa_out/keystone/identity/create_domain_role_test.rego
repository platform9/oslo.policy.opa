package identity_create_domain_role_test

import data.identity.create_domain_role

test_create_domain_role_0 if create_domain_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_domain_role_1 if create_domain_role.allow with input as {"credentials": {"is_admin": 1}}
