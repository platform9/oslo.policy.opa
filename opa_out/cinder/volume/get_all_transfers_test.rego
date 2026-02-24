package volume_get_all_transfers_test

import data.volume.get_all_transfers

test_get_all_transfers_0 if get_all_transfers.allow with input as {"credentials": {"roles": ["admin"]}}
test_get_all_transfers_1 if get_all_transfers.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
