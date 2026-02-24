package identity_list_application_credentials_test

import data.identity.list_application_credentials

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_0 if list_application_credentials.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_1 if list_application_credentials.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_2 if list_application_credentials.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_owner_3 if list_application_credentials.allow with input as {"credentials": {"user_id": "foo"}, "target": {"user_id": "foo"}}
