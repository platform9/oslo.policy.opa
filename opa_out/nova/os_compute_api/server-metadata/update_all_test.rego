package os_compute_api_server_metadata_update_all_test

import data.os_compute_api.server_metadata.update_all

test_update_all_0 if update_all.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_update_all_1 if update_all.allow with input as {"credentials": {"roles": ["admin"]}}
