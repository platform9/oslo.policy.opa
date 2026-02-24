package identity_list_user_projects_test

import data.identity.list_user_projects

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_or_creds_user_id_eq_input_target_user_id_0 if list_user_projects.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_or_creds_user_id_eq_input_target_user_id_1 if list_user_projects.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_or_creds_user_id_eq_input_target_user_id_2 if list_user_projects.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_or_creds_user_id_eq_input_target_user_id_3 if list_user_projects.allow with input as {"credentials": {"roles": ["reader"], "domain_id": "foo"}, "target": {"target": {"user": {"domain_id": "foo"}}}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_user_domain_id_or_creds_user_id_eq_input_target_user_id_4 if list_user_projects.allow with input as {"credentials": {"user_id": "foo"}, "target": {"target": {"user": {"id": "foo"}}}}
