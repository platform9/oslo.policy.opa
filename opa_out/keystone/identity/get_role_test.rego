package identity_get_role_test

import data.identity.get_role

test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_0 if get_role.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_1 if get_role.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_2 if get_role.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_3 if get_role.allow with input as {"credentials": {"roles": ["manager"]}, "target": {"target": {"role": {"name": "manager"}}}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_4 if get_role.allow with input as {"credentials": {"roles": ["manager"]}, "target": {"target.role.name": "manager"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_5 if get_role.allow with input as {"credentials": {"roles": ["manager"]}, "target": {"target": {"role": {"name": "member"}}}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_6 if get_role.allow with input as {"credentials": {"roles": ["manager"]}, "target": {"target.role.name": "member"}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_7 if get_role.allow with input as {"credentials": {"roles": ["manager"]}, "target": {"target": {"role": {"name": "reader"}}}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_or_manager_and_domain_managed_target_role_8 if get_role.allow with input as {"credentials": {"roles": ["manager"]}, "target": {"target.role.name": "reader"}}
