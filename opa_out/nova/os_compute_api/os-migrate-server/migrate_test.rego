package os_compute_api_os_migrate_server_migrate_test

import data.os_compute_api.os_migrate_server.migrate

test_migrate_0 if migrate.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_migrate_1 if migrate.allow with input as {"credentials": {"roles": ["admin"]}}
