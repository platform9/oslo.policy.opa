package update_port_tags_test

import data.update_port.tags

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_or_context_is_advsvc_0 if tags.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_or_context_is_advsvc_1 if tags.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_or_context_is_advsvc_2 if tags.allow with input as {"credentials": {"roles": ["advsvc"]}}
