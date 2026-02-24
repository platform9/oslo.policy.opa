package identity_revoke_system_grant_for_user_test

import data.identity.revoke_system_grant_for_user

test_revoke_system_grant_for_user_0 if revoke_system_grant_for_user.allow with input as {"credentials": {"roles": ["admin"]}}
test_revoke_system_grant_for_user_1 if revoke_system_grant_for_user.allow with input as {"credentials": {"is_admin": 1}}
