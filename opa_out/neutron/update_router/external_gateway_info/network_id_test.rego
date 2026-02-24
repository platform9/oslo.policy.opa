package update_router_external_gateway_info_network_id_test

import data.update_router.external_gateway_info.network_id

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if network_id.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if network_id.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
