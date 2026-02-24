package create_network_port_security_enabled_test

import data.create_network.port_security_enabled

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if port_security_enabled.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if port_security_enabled.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
