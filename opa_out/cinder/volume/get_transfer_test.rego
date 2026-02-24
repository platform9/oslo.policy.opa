package volume_get_transfer_test

import data.volume.get_transfer

test_get_transfer_0 if get_transfer.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_transfer_1 if get_transfer.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
