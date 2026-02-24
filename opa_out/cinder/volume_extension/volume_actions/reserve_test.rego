package volume_extension_volume_actions_reserve_test

import data.volume_extension.volume_actions.reserve

test_reserve_0 if reserve.allow with input as {"credentials": {"roles": ["admin"]}}
test_reserve_1 if reserve.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
