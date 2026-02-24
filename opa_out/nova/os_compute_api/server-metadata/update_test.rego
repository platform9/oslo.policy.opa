package os_compute_api_server_metadata_update_test

import data.os_compute_api.server_metadata.update

test_update_0 if update.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_update_1 if update.allow with input as {"credentials": {"roles": ["admin"]}}
