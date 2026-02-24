package identity_update_mapping_test

import data.identity.update_mapping

test_update_mapping_0 if update_mapping.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_mapping_1 if update_mapping.allow with input as {"credentials": {"is_admin": 1}}
