package get_subnet_test

import data.get_subnet

test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_or_service_api_0 if get_subnet.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_or_service_api_1 if get_subnet.allow with input as {"target": {"network_id": "foo"}} with data.lib.get_network as {"shared": true}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_or_service_api_2 if get_subnet.allow with input as {"target": {"router:external": true}}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_or_service_api_3 if get_subnet.allow with input as {"credentials": {"roles": ["admin"]}}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_or_service_api_4 if get_subnet.allow with input as {"credentials": {"roles": ["reader"], "tenant_id": "bar"}, "target": {"network_id": "foo"}} with data.lib.get_network as {"tenant_id": "bar"}
test_reader_and_creds_project_id_eq_input_project_id_or_shared_or_external_network_or_admin_only_or_reader_and_network_owner_or_service_api_5 if get_subnet.allow with input as {"credentials": {"roles": ["service"]}}
