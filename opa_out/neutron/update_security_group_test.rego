package update_security_group_test

import data.update_security_group

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if update_security_group.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if update_security_group.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
