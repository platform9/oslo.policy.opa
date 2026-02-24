package group_group_types_specs_get_all_test

import data.group.group_types_specs.get_all

test_get_all_0 if get_all.allow with input as {"credentials": {"is_admin": true}}
test_get_all_1 if get_all.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
