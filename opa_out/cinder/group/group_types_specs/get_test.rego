package group_group_types_specs_get_test

import data.group.group_types_specs.get

test_get_0 if get.allow with input as {"credentials": {"is_admin": true}}
test_get_1 if get.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
