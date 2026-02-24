package update_port_binding_vnic_type_test

import data.update_port.binding.vnic_type

test_admin_only_or_service_api_or_member_and_creds_project_id_eq_input_project_id_0 if vnic_type.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_service_api_or_member_and_creds_project_id_eq_input_project_id_1 if vnic_type.allow with input as {"credentials": {"roles": ["service"]}}
test_admin_only_or_service_api_or_member_and_creds_project_id_eq_input_project_id_2 if vnic_type.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
