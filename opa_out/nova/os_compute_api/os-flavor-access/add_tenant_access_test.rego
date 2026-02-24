package os_compute_api_os_flavor_access_add_tenant_access_test

import data.os_compute_api.os_flavor_access.add_tenant_access

test_add_tenant_access_0 if add_tenant_access.allow with input as {"credentials": {"roles": ["admin"]}}
