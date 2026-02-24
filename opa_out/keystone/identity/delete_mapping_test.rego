package identity_delete_mapping_test

import data.identity.delete_mapping

test_delete_mapping_0 if delete_mapping.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_mapping_1 if delete_mapping.allow with input as {"credentials": {"is_admin": 1}}
