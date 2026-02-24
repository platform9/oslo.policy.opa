package workers_cleanup_test

import data.workers.cleanup

test_cleanup_0 if cleanup.allow with input as {"credentials": {"is_admin": true}}
test_cleanup_1 if cleanup.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
