package os_compute_api_os_server_shares_create_test

import data.os_compute_api.os_server_shares.create

test_create_0 if create.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
