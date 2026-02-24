package identity_revoke_system_grant_for_group_test

import data.identity.revoke_system_grant_for_group

test_revoke_system_grant_for_group_0 if revoke_system_grant_for_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_revoke_system_grant_for_group_1 if revoke_system_grant_for_group.allow with input as {"credentials": {"is_admin": 1}}
