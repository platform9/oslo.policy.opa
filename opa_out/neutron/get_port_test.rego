package get_port_test

import data.get_port

test_admin_only_or_service_api_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_0 if get_port.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_1 if get_port.allow with input as {"credentials": {"roles": ["service"]}}
test_admin_only_or_service_api_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_2 if get_port.allow with input as {"credentials": {"roles": ["reader"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
test_admin_only_or_service_api_or_reader_and_network_owner_or_reader_and_creds_project_id_eq_input_project_id_3 if get_port.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
