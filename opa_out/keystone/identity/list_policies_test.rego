package identity_list_policies_test

import data.identity.list_policies

test_admin_required_or_reader_and_creds_system_scope_eq_all_0 if list_policies.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_1 if list_policies.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_2 if list_policies.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
