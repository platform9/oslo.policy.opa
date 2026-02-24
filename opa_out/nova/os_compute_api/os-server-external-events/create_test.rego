package os_compute_api_os_server_external_events_create_test

import data.os_compute_api.os_server_external_events.create

test_create_0 if create.allow with input as {"credentials": {"roles": ["service"]}}
test_create_1 if create.allow with input as {"credentials": {"roles": ["admin"]}}
