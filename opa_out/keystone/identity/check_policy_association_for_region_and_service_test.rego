package identity_check_policy_association_for_region_and_service_test

import data.identity.check_policy_association_for_region_and_service

test_admin_required_or_reader_and_creds_system_scope_eq_all_0 if check_policy_association_for_region_and_service.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_1 if check_policy_association_for_region_and_service.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_2 if check_policy_association_for_region_and_service.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
