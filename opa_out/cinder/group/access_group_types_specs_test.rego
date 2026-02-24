package group_access_group_types_specs_test

import data.group.access_group_types_specs

test_access_group_types_specs_0 if access_group_types_specs.allow with input as {"credentials": {"is_admin": true}}
test_access_group_types_specs_1 if access_group_types_specs.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
