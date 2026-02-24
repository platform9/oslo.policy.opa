package os_compute_api_server_metadata_delete_test

import data.os_compute_api.server_metadata.delete

test_delete_0 if delete.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["admin"]}}
