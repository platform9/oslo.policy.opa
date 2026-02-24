package get_metering_label_test

import data.get_metering_label

test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_0 if get_metering_label.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_1 if get_metering_label.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
