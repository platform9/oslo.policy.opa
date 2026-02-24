package volume_attachment_update_test

import data.volume.attachment_update

test_attachment_update_0 if attachment_update.allow with input as {"credentials": {"roles": ["admin"]}}
test_attachment_update_1 if attachment_update.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
