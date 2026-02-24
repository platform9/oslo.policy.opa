package volume_extension_volume_encryption_metadata_test

import data.volume_extension.volume_encryption_metadata

test_volume_encryption_metadata_0 if volume_encryption_metadata.allow with input as {"credentials": {"roles": ["admin"]}}
test_volume_encryption_metadata_1 if volume_encryption_metadata.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
