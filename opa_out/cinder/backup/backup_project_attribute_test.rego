package backup_backup_project_attribute_test

import data.backup.backup_project_attribute

test_backup_project_attribute_0 if backup_project_attribute.allow with input as {"credentials": {"is_admin": true}}
test_backup_project_attribute_1 if backup_project_attribute.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
