package backup_export_import_test

import data.backup.export_import

test_export_import_0 if export_import.allow with input as {"credentials": {"is_admin": true}}
test_export_import_1 if export_import.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
