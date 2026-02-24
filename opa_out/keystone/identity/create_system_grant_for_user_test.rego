package identity_create_system_grant_for_user_test

import data.identity.create_system_grant_for_user

test_create_system_grant_for_user_0 if create_system_grant_for_user.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_system_grant_for_user_1 if create_system_grant_for_user.allow with input as {"credentials": {"is_admin": 1}}
