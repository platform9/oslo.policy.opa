package group_group_snapshot_project_attribute_test

import data.group.group_snapshot_project_attribute

test_group_snapshot_project_attribute_0 if group_snapshot_project_attribute.allow with input as {"credentials": {"is_admin": true}}
test_group_snapshot_project_attribute_1 if group_snapshot_project_attribute.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
