package create_floatingip_floating_ip_address_test

import data.create_floatingip.floating_ip_address

test_admin_only_or_manager_and_creds_project_id_eq_input_project_id_0 if floating_ip_address.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_manager_and_creds_project_id_eq_input_project_id_1 if floating_ip_address.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
