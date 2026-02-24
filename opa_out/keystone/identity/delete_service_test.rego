package identity_delete_service_test

import data.identity.delete_service

test_delete_service_0 if delete_service.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_service_1 if delete_service.allow with input as {"credentials": {"is_admin": 1}}
