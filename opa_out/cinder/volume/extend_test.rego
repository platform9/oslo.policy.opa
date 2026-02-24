package volume_extend_test

import data.volume.extend

test_extend_0 if extend.allow with input as {"credentials": {"roles": ["admin"]}}
test_extend_1 if extend.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
