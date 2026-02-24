package os_compute_api_os_server_tags_update_test

import data.os_compute_api.os_server_tags.update

test_update_0 if update.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_update_1 if update.allow with input as {"credentials": {"roles": ["admin"]}}
