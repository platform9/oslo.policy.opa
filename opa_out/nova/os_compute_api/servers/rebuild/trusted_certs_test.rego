package os_compute_api_servers_rebuild_trusted_certs_test

import data.os_compute_api.servers.rebuild.trusted_certs

test_trusted_certs_0 if trusted_certs.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_trusted_certs_1 if trusted_certs.allow with input as {"credentials": {"roles": ["admin"]}}
