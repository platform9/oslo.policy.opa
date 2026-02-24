package identity_update_domain_role_test

import data.identity.update_domain_role

test_update_domain_role_0 if update_domain_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_domain_role_1 if update_domain_role.allow with input as {"credentials": {"is_admin": 1}}
