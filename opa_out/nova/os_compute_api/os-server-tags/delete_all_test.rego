package os_compute_api_os_server_tags_delete_all_test

import data.os_compute_api.os_server_tags.delete_all

test_delete_all_0 if delete_all.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_delete_all_1 if delete_all.allow with input as {"credentials": {"roles": ["admin"]}}
