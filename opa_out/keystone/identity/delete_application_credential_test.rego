package identity_delete_application_credential_test

import data.identity.delete_application_credential

test_delete_application_credential_0 if delete_application_credential.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_application_credential_1 if delete_application_credential.allow with input as {"credentials": {"is_admin": 1}}
test_delete_application_credential_2 if delete_application_credential.allow with input as {"credentials": {"user_id": "foo"}, "target": {"user_id": "foo"}}
