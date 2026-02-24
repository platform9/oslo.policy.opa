package os_compute_api_os_remote_consoles_test

import data.os_compute_api.os_remote_consoles

test_os_remote_consoles_0 if os_remote_consoles.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_os_remote_consoles_1 if os_remote_consoles.allow with input as {"credentials": {"roles": ["admin"]}}
