package volume_multiattach_bootable_volume_test

import data.volume.multiattach_bootable_volume

test_multiattach_bootable_volume_0 if multiattach_bootable_volume.allow with input as {"credentials": {"roles": ["admin"]}}
test_multiattach_bootable_volume_1 if multiattach_bootable_volume.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
