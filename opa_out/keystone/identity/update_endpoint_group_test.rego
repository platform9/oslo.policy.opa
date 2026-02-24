package identity_update_endpoint_group_test

import data.identity.update_endpoint_group

test_update_endpoint_group_0 if update_endpoint_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_endpoint_group_1 if update_endpoint_group.allow with input as {"credentials": {"is_admin": 1}}
