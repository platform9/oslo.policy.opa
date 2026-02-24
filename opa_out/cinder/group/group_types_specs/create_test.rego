package group_group_types_specs_create_test

import data.group.group_types_specs.create

test_create_0 if create.allow with input as {"credentials": {"is_admin": true}}
test_create_1 if create.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
