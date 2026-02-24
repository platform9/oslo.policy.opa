package os_compute_api_os_server_tags_update_all_test

import data.os_compute_api.os_server_tags.update_all

test_update_all_0 if update_all.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_update_all_1 if update_all.allow with input as {"credentials": {"roles": ["admin"]}}
