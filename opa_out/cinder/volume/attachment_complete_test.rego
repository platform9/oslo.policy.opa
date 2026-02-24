package volume_attachment_complete_test

import data.volume.attachment_complete

test_attachment_complete_0 if attachment_complete.allow with input as {"credentials": {"roles": ["admin"]}}
test_attachment_complete_1 if attachment_complete.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
