package volume_extension_hosts_test

import data.volume_extension.hosts

test_hosts_0 if hosts.allow with input as {"credentials": {"is_admin": true}}
test_hosts_1 if hosts.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
