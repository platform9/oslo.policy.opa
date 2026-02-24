package get_subnetpool_tags_test

import data.get_subnetpool.tags

test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_shared_subnetpools_0 if tags.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_shared_subnetpools_1 if tags.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_shared_subnetpools_2 if tags.allow with input as {"target": {"shared": true}}
