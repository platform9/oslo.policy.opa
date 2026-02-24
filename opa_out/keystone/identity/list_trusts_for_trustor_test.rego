package identity_list_trusts_for_trustor_test

import data.identity.list_trusts_for_trustor

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_0 if list_trusts_for_trustor.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_1 if list_trusts_for_trustor.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_2 if list_trusts_for_trustor.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_3 if list_trusts_for_trustor.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"trust": {"trustor_user_id": "foo"}}}}
