package delete_rbac_policy_test

import data.delete_rbac_policy

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if delete_rbac_policy.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if delete_rbac_policy.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
