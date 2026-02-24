package identity_list_project_tags_test

import data.identity.list_project_tags

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_project_domain_id_or_creds_project_id_eq_input_target_project_id_0 if list_project_tags.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_project_domain_id_or_creds_project_id_eq_input_target_project_id_1 if list_project_tags.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_project_domain_id_or_creds_project_id_eq_input_target_project_id_2 if list_project_tags.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_project_domain_id_or_creds_project_id_eq_input_target_project_id_3 if list_project_tags.allow with input as {"credentials": {"roles": ["reader"], "domain_id": "foo"}, "target": {"target": {"project": {"domain_id": "foo"}}}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_project_domain_id_or_creds_project_id_eq_input_target_project_id_4 if list_project_tags.allow with input as {"credentials": {"project_id": "foo"}, "target": {"target": {"project": {"id": "foo"}}}}
