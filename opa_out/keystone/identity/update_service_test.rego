package identity_update_service_test

import data.identity.update_service

test_update_service_0 if update_service.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_service_1 if update_service.allow with input as {"credentials": {"is_admin": 1}}
