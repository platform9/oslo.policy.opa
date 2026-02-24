package update_router_tags_test

import data.update_router.tags

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if tags.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if tags.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
