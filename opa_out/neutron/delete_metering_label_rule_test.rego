package delete_metering_label_rule_test

import data.delete_metering_label_rule

test_admin_only_or_manager_and_creds_project_id_eq_input_project_id_0 if delete_metering_label_rule.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_manager_and_creds_project_id_eq_input_project_id_1 if delete_metering_label_rule.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
