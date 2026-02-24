package clusters_update_test

import data.clusters.update

test_update_0 if update.allow with input as {"credentials": {"is_admin": true}}
test_update_1 if update.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
