package volume_extension_volume_actions_upload_image_test

import data.volume_extension.volume_actions.upload_image

test_upload_image_0 if upload_image.allow with input as {"credentials": {"roles": ["admin"]}}
test_upload_image_1 if upload_image.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
