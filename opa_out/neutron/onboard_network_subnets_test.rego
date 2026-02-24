package onboard_network_subnets_test

import data.onboard_network_subnets

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if onboard_network_subnets.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if onboard_network_subnets.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
