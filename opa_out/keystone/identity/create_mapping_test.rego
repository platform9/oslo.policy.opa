package identity_create_mapping_test

import data.identity.create_mapping

test_create_mapping_0 if create_mapping.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_mapping_1 if create_mapping.allow with input as {"credentials": {"is_admin": 1}}
