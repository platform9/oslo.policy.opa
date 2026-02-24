package os_compute_api_servers_migrations_delete_test

import data.os_compute_api.servers.migrations.delete

test_delete_0 if delete.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_delete_1 if delete.allow with input as {"credentials": {"roles": ["admin"]}}
