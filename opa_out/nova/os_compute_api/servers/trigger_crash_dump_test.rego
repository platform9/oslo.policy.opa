package os_compute_api_servers_trigger_crash_dump_test

import data.os_compute_api.servers.trigger_crash_dump

test_trigger_crash_dump_0 if trigger_crash_dump.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_trigger_crash_dump_1 if trigger_crash_dump.allow with input as {"credentials": {"roles": ["admin"]}}
