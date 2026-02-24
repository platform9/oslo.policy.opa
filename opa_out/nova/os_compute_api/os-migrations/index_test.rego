package os_compute_api_os_migrations_index_test

import data.os_compute_api.os_migrations.index

test_index_0 if index.allow with input as {"credentials": {"roles": ["manager"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_index_1 if index.allow with input as {"credentials": {"roles": ["admin"]}}
