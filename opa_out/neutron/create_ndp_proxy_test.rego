package create_ndp_proxy_test

import data.create_ndp_proxy

test_admin_only_or_member_and_creds_project_id_eq_input_project_id_0 if create_ndp_proxy.allow with input as {"credentials": {"roles": ["admin"]}}
test_admin_only_or_member_and_creds_project_id_eq_input_project_id_1 if create_ndp_proxy.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
