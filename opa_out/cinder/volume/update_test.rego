package volume_update_test

import data.volume.update

test_update_0 if update.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_1 if update.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
