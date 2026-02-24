package volume_extend_attached_volume_test

import data.volume.extend_attached_volume

test_extend_attached_volume_0 if extend_attached_volume.allow with input as {"credentials": {"roles": ["admin"]}}
test_extend_attached_volume_1 if extend_attached_volume.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
