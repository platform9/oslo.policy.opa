package volume_extension_type_get_test

import data.volume_extension.type_get

test_type_get_0 if type_get.allow with input as {"credentials": {"roles": ["admin"]}}
test_type_get_1 if type_get.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
