package volume_extension_access_types_extra_specs_test

import data.volume_extension.access_types_extra_specs

test_access_types_extra_specs_0 if access_types_extra_specs.allow with input as {"credentials": {"roles": ["admin"]}}
test_access_types_extra_specs_1 if access_types_extra_specs.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
