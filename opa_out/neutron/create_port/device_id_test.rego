package create_port_device_id_test

import data.create_port.device_id

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_or_service_api_0 if device_id.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_or_service_api_1 if device_id.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_or_service_api_2 if device_id.allow with input as {"credentials": {"roles": ["service"]}}
