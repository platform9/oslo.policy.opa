package volume_multiattach_test

import data.volume.multiattach

test_multiattach_0 if multiattach.allow with input as {"credentials": {"roles": ["admin"]}}
test_multiattach_1 if multiattach.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
