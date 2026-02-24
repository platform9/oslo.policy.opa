package volume_attachment_delete_test

import data.volume.attachment_delete

test_attachment_delete_0 if attachment_delete.allow with input as {"credentials": {"roles": ["admin"]}}
test_attachment_delete_1 if attachment_delete.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
