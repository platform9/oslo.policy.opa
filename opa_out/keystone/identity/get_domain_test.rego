package identity_get_domain_test

import data.identity.get_domain

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_token_domain_id_eq_input_target_domain_id_or_creds_token_project_domain_id_eq_input_target_domain_id_0 if get_domain.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_token_domain_id_eq_input_target_domain_id_or_creds_token_project_domain_id_eq_input_target_domain_id_1 if get_domain.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_token_domain_id_eq_input_target_domain_id_or_creds_token_project_domain_id_eq_input_target_domain_id_2 if get_domain.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_token_domain_id_eq_input_target_domain_id_or_creds_token_project_domain_id_eq_input_target_domain_id_3 if get_domain.allow with input as {"credentials": {"token": {"domain": {"id": "foo"}}}, "target": {"target": {"domain": {"id": "foo"}}}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_creds_token_domain_id_eq_input_target_domain_id_or_creds_token_project_domain_id_eq_input_target_domain_id_4 if get_domain.allow with input as {"credentials": {"token": {"project": {"domain": {"id": "foo"}}}}, "target": {"target": {"domain": {"id": "foo"}}}}
