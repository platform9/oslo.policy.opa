package os_compute_api_servers_reboot_test

import data.os_compute_api.servers.reboot

test_reboot_0 if reboot.allow with input as {"credentials": {"roles": ["member"], "project_id": "foo"}, "target": {"project_id": "foo"}}
test_reboot_1 if reboot.allow with input as {"credentials": {"roles": ["admin"]}}
