package update_external_gateways_test

import data.update_external_gateways

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if update_external_gateways.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if update_external_gateways.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
