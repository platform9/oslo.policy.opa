package volume_extension_services_index_test

import data.volume_extension.services.index

test_index_0 if index.allow with input as {"credentials": {"is_admin": true}}
test_index_1 if index.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
