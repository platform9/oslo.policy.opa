package identity_check_system_grant_for_group_test

import data.identity.check_system_grant_for_group

test_admin_required_or_reader_and_creds_system_scope_eq_all_0 if check_system_grant_for_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_1 if check_system_grant_for_group.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_2 if check_system_grant_for_group.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
