package identity_check_token_test

import data.identity.check_token

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_token_subject_0 if check_token.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_token_subject_1 if check_token.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_token_subject_2 if check_token.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_token_subject_3 if check_token.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"token": {"user_id": "foo"}}}}
