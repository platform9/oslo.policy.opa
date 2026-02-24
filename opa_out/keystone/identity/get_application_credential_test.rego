package identity_get_application_credential_test

import data.identity.get_application_credential

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_0 if get_application_credential.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_1 if get_application_credential.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_2 if get_application_credential.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_3 if get_application_credential.allow with input as {"credentials": {"user_id": "foo"}, "target": {"user_id": "foo"}}
