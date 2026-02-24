package update_port_mac_address_test

import data.update_port.mac_address

test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_0 if mac_address.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_1 if mac_address.allow with input as {"credentials": {"roles": ["service"]}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_2 if mac_address.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
