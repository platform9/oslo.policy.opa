package volume_get_all_test

import data.volume.get_all

test_get_all_0 if get_all.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_all_1 if get_all.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
