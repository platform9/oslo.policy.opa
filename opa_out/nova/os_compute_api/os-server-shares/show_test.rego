package os_compute_api_os_server_shares_show_test

import data.os_compute_api.os_server_shares.show

test_show_0 if show.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
