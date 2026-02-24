package create_rbac_policy_target_project_test

import data.create_rbac_policy.target_project

test_admin_only_or_not_field_rbac_policy_target_project_any_0 if target_project.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_not_field_rbac_policy_target_project_any_1 if target_project.allow with input as {"target": {"target_project": "foo"}}
