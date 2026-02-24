package identity_revocation_list_test

import data.identity.revocation_list

test_revocation_list_0 if revocation_list.allow with input as {"credentials": {"roles": ["admin"]}}
test_revocation_list_1 if revocation_list.allow with input as {"credentials": {"is_admin": 1}}
test_revocation_list_2 if revocation_list.allow with input as {"credentials": {"roles": ["service"]}}
