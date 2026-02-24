package update_port_allowed_address_pairs_mac_address_test

import data.update_port.allowed_address_pairs.mac_address

test_admin_only_or_member_and_network_owner_or_manager_and_creds_project_id_eq_input_project_id_or_service_api_0 if mac_address.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_network_owner_or_manager_and_creds_project_id_eq_input_project_id_or_service_api_1 if mac_address.allow with input as {"credentials": {"roles": ["member"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
test_admin_only_or_member_and_network_owner_or_manager_and_creds_project_id_eq_input_project_id_or_service_api_2 if mac_address.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_admin_only_or_member_and_network_owner_or_manager_and_creds_project_id_eq_input_project_id_or_service_api_3 if mac_address.allow with input as {"credentials": {"roles": ["service"]}}
