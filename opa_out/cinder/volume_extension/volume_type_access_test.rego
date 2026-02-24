package volume_extension_volume_type_access_test

import data.volume_extension.volume_type_access

test_volume_type_access_0 if volume_type_access.allow with input as {"credentials": {"roles": ["admin"]}}
test_volume_type_access_1 if volume_type_access.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
