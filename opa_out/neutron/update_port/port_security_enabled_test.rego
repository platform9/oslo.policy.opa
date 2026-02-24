package update_port_port_security_enabled_test

import data.update_port.port_security_enabled

test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_0 if port_security_enabled.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_1 if port_security_enabled.allow with input as {"credentials": {"roles": ["service"]}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_2 if port_security_enabled.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_admin_only_or_service_api_or_manager_and_creds_project_id_eq_input_project_id_or_member_and_network_owner_3 if port_security_enabled.allow with input as {"credentials": {"roles": ["member"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
