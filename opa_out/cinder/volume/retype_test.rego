package volume_retype_test

import data.volume.retype

test_retype_0 if retype.allow with input as {"credentials": {"roles": ["admin"]}}
test_retype_1 if retype.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
