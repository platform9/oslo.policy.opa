package volume_create_transfer_test

import data.volume.create_transfer

test_create_transfer_0 if create_transfer.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_transfer_1 if create_transfer.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
