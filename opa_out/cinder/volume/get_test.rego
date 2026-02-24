package volume_get_test

import data.volume.get

test_get_0 if get.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_1 if get.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
