package update_port_device_owner_test

import data.update_port.device_owner

test_not_network_device_or_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_0 if device_owner.allow with input as {"target": {"device_owner": "network:foo"}}
test_not_network_device_or_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_1 if device_owner.allow with input as {"credentials": {"roles": ["admin"]}}
test_not_network_device_or_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_2 if device_owner.allow with input as {"credentials": {"roles": ["service"]}}
test_not_network_device_or_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_3 if device_owner.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_not_network_device_or_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_4 if device_owner.allow with input as {"credentials": {"roles": ["member"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
