package identity_check_user_in_group_test

import data.identity.check_user_in_group

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id_0 if check_user_in_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id_1 if check_user_in_group.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id_2 if check_user_in_group.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_and_creds_domain_id_eq_input_target_user_domain_id_3 if check_user_in_group.allow with input as {"credentials": {"roles": ["reader"], "domain_id": "foo"}, "target": {"target": {"group": {"domain_id": "foo"}, "user": {"domain_id": "foo"}}}}
