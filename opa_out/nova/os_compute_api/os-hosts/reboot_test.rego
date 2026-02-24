package os_compute_api_os_hosts_reboot_test

import data.os_compute_api.os_hosts.reboot

test_reboot_0 if reboot.allow with input as {"credentials": {"roles": ["admin"]}}
