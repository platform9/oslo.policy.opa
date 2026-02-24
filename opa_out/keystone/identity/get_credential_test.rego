package identity_get_credential_test

import data.identity.get_credential

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_credential_user_id_0 if get_credential.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_credential_user_id_1 if get_credential.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_credential_user_id_2 if get_credential.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_credential_user_id_3 if get_credential.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"credential": {"user_id": "foo"}}}}
