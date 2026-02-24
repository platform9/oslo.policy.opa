package limits_extension_used_limits_test

import data.limits_extension.used_limits

test_used_limits_0 if used_limits.allow with input as {"credentials": {"roles": ["admin"]}}
test_used_limits_1 if used_limits.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
