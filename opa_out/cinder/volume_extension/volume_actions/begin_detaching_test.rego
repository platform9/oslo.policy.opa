package volume_extension_volume_actions_begin_detaching_test

import data.volume_extension.volume_actions.begin_detaching

test_begin_detaching_0 if begin_detaching.allow with input as {"credentials": {"roles": ["admin"]}}
test_begin_detaching_1 if begin_detaching.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
