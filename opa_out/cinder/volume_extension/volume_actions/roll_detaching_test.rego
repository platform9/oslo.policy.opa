package volume_extension_volume_actions_roll_detaching_test

import data.volume_extension.volume_actions.roll_detaching

test_roll_detaching_0 if roll_detaching.allow with input as {"credentials": {"roles": ["admin"]}}
test_roll_detaching_1 if roll_detaching.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
