package volume_extension_volume_actions_attach_test

import data.volume_extension.volume_actions.attach

test_attach_0 if attach.allow with input as {"credentials": {"roles": ["admin"]}}
test_attach_1 if attach.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
