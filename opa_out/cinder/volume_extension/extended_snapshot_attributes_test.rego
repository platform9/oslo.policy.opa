package volume_extension_extended_snapshot_attributes_test

import data.volume_extension.extended_snapshot_attributes

test_extended_snapshot_attributes_0 if extended_snapshot_attributes.allow with input as {"credentials": {"roles": ["admin"]}}
test_extended_snapshot_attributes_1 if extended_snapshot_attributes.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
