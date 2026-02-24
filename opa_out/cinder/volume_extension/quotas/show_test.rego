package volume_extension_quotas_show_test

import data.volume_extension.quotas.show

test_show_0 if show.allow with input as {"credentials": {"roles": ["admin"]}}
test_show_1 if show.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
