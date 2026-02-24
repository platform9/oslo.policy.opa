package identity_delete_endpoint_group_test

import data.identity.delete_endpoint_group

test_delete_endpoint_group_0 if delete_endpoint_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_endpoint_group_1 if delete_endpoint_group.allow with input as {"credentials": {"is_admin": 1}}
