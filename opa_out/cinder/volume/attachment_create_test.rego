package volume_attachment_create_test

import data.volume.attachment_create

test_attachment_create_0 if attachment_create.allow with input as {"credentials": {"roles": ["admin"]}}
test_attachment_create_1 if attachment_create.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
