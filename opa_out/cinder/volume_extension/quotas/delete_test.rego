package volume_extension_quotas_delete_test

import data.volume_extension.quotas.delete

test_delete_0 if delete.allow with input as {"credentials": {"is_admin": true}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
