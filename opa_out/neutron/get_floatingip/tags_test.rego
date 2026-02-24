package get_floatingip_tags_test

import data.get_floatingip.tags

test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_0 if tags.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_1 if tags.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
