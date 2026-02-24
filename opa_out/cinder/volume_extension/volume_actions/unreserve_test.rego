package volume_extension_volume_actions_unreserve_test

import data.volume_extension.volume_actions.unreserve

test_unreserve_0 if unreserve.allow with input as {"credentials": {"roles": ["admin"]}}
test_unreserve_1 if unreserve.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
