package volume_accept_transfer_test

import data.volume.accept_transfer

test_accept_transfer_0 if accept_transfer.allow with input as {"credentials": {"roles": ["admin"]}}
test_accept_transfer_1 if accept_transfer.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
