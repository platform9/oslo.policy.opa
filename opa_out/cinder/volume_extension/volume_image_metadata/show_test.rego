package volume_extension_volume_image_metadata_show_test

import data.volume_extension.volume_image_metadata.show

test_show_0 if show.allow with input as {"credentials": {"roles": ["admin"]}}
test_show_1 if show.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
