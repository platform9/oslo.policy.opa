package os_compute_api_os_migrate_server_migrate_live_test

import data.os_compute_api.os_migrate_server.migrate_live

test_migrate_live_0 if migrate_live.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_migrate_live_1 if migrate_live.allow with input as {"credentials": {"roles": ["admin"]}}
