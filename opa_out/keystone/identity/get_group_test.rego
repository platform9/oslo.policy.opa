package identity_get_group_test

import data.identity.get_group

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_0 if get_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_1 if get_group.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_2 if get_group.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_reader_and_creds_domain_id_eq_input_target_group_domain_id_3 if get_group.allow with input as {"credentials": {"roles": ["reader"], "domain_id": "foo"}, "target": {"target": {"group": {"domain_id": "foo"}}}}
