package update_log_test

import data.update_log

test_admin_only_or_manager_and_creds_project_id_eq_input_project_id_0 if update_log.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_manager_and_creds_project_id_eq_input_project_id_1 if update_log.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
