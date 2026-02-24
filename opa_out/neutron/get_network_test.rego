package get_network_test

import data.get_network

test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_service_api_or_shared_or_external_or_context_is_advsvc_0 if get_network.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_service_api_or_shared_or_external_or_context_is_advsvc_1 if get_network.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_service_api_or_shared_or_external_or_context_is_advsvc_2 if get_network.allow with input as {"credentials": {"roles": ["service"]}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_service_api_or_shared_or_external_or_context_is_advsvc_3 if get_network.allow with input as {"target": {"network_id": "foo"}} with data.lib.get_network as {"shared": true}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_service_api_or_shared_or_external_or_context_is_advsvc_4 if get_network.allow with input as {"target": {"router:external": true}}
test_admin_only_or_reader_and_creds_project_id_eq_input_project_id_or_service_api_or_shared_or_external_or_context_is_advsvc_5 if get_network.allow with input as {"credentials": {"roles": ["advsvc"]}}
