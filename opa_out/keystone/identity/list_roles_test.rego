package identity_list_roles_test

import data.identity.list_roles

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_not_creds_domain_id_eq_None_0 if list_roles.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_not_creds_domain_id_eq_None_1 if list_roles.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_not_creds_domain_id_eq_None_2 if list_roles.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_not_creds_domain_id_eq_None_3 if list_roles.allow with input as {"credentials": {"roles": ["manager"], "domain_id": "foo"}}
