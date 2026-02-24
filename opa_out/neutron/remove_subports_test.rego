package remove_subports_test

import data.remove_subports

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if remove_subports.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if remove_subports.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
