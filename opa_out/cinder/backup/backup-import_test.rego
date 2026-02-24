package backup_backup_import_test

import data.backup.backup_import

test_backup_import_0 if backup_import.allow with input as {"credentials": {"is_admin": true}}
test_backup_import_1 if backup_import.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
