package volume_extension_volume_actions_detach_test

import data.volume_extension.volume_actions.detach

test_detach_0 if detach.allow with input as {"credentials": {"roles": ["admin"]}}
test_detach_1 if detach.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
