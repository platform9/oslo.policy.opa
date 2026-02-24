package volume_create_test

import data.volume.create

test_create_0 if create.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_1 if create.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
