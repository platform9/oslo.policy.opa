package group_group_types_specs_delete_test

import data.group.group_types_specs.delete

test_delete_0 if delete.allow with input as {"credentials": {"is_admin": true}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
