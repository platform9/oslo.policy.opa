package identity_create_system_grant_for_group_test

import data.identity.create_system_grant_for_group

test_create_system_grant_for_group_0 if create_system_grant_for_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_system_grant_for_group_1 if create_system_grant_for_group.allow with input as {"credentials": {"is_admin": 1}}
