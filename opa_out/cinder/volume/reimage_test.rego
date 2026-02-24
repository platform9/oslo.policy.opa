package volume_reimage_test

import data.volume.reimage

test_reimage_0 if reimage.allow with input as {"credentials": {"roles": ["admin"]}}
test_reimage_1 if reimage.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
