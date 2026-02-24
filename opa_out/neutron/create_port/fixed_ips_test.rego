package create_port_fixed_ips_test

import data.create_port.fixed_ips

test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_or_shared_0 if fixed_ips.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_or_shared_1 if fixed_ips.allow with input as {"credentials": {"roles": ["service"]}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_or_shared_2 if fixed_ips.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_or_shared_3 if fixed_ips.allow with input as {"credentials": {"roles": ["member"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_or_shared_4 if fixed_ips.allow with input as {"target": {"network_id": "foo"}} with data.lib.get_network as {"shared": true}
