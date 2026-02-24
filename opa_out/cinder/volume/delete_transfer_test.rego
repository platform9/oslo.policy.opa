package volume_delete_transfer_test

import data.volume.delete_transfer

test_delete_transfer_0 if delete_transfer.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_transfer_1 if delete_transfer.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
