package os_compute_api_servers_migrations_force_complete_test

import data.os_compute_api.servers.migrations.force_complete

test_force_complete_0 if force_complete.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_force_complete_1 if force_complete.allow with input as {"credentials": {"roles": ["admin"]}}
