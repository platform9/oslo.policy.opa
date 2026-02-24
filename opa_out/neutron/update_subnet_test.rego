package update_subnet_test

import data.update_subnet

test_member_and_creds_project_id_eq_input_project_id_or_admin_only_or_member_and_network_owner_0 if update_subnet.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_member_and_creds_project_id_eq_input_project_id_or_admin_only_or_member_and_network_owner_1 if update_subnet.allow with input as {"credentials": {"roles": ["admin"]}}
test_member_and_creds_project_id_eq_input_project_id_or_admin_only_or_member_and_network_owner_2 if update_subnet.allow with input as {"credentials": {"roles": ["member"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
