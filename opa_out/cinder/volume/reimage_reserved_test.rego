package volume_reimage_reserved_test

import data.volume.reimage_reserved

test_reimage_reserved_0 if reimage_reserved.allow with input as {"credentials": {"roles": ["admin"]}}
test_reimage_reserved_1 if reimage_reserved.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
