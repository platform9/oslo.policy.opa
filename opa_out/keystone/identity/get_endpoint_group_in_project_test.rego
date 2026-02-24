package identity_get_endpoint_group_in_project_test

import data.identity.get_endpoint_group_in_project

test_admin_required_or_reader_and_creds_system_scope_eq_all_0 if get_endpoint_group_in_project.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_1 if get_endpoint_group_in_project.allow with input as {"credentials": {"is_admin": 1}}
test_admin_required_or_reader_and_creds_system_scope_eq_all_2 if get_endpoint_group_in_project.allow with input as {"credentials": {"roles": ["reader"], "system_scope": "all"}}
