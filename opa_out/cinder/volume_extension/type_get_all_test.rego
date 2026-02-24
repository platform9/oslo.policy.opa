package volume_extension_type_get_all_test

import data.volume_extension.type_get_all

test_type_get_all_0 if type_get_all.allow with input as {"credentials": {"roles": ["admin"]}}
test_type_get_all_1 if type_get_all.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
