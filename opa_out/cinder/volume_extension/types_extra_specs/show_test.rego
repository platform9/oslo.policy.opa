package volume_extension_types_extra_specs_show_test

import data.volume_extension.types_extra_specs.show

test_show_0 if show.allow with input as {"credentials": {"roles": ["admin"]}}
test_show_1 if show.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
